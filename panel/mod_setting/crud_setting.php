<?php
require("../../config/config.default.php");
require("../../config/config.function.php");
require("../../config/functions.crud.php");
cek_session_admin();
(isset($_GET['pg'])) ? $pg = $_GET['pg'] : $pg = '';
if ($pg == 'setting_app') {
    $alamat = nl2br($_POST['alamat']);
    $header = nl2br($_POST['header']);
    $data = [
        'token_api' => $_POST['token_api'],
        'aplikasi' => $_POST['aplikasi'],
        'sekolah' => $_POST['sekolah'],
        'kode_sekolah' => $_POST['kode'],
        'jenjang' => $_POST['jenjang'],
        'kepsek' => $_POST['kepsek'],
        'nip' => $_POST['nip'],
        'alamat' => $alamat,
        'kecamatan' => $_POST['kecamatan'],
        'kota' => $_POST['kota'],
        'telp' => $_POST['telp'],
        'fax' => $_POST['fax'],
        'web' => $_POST['web'],
        'email' => $_POST['email'],
        'header' => $header,
        'ip_server' => $_POST['ipserver'],
        'waktu' => $_POST['waktu']
    ];
    $exec = update($koneksi, 'setting', $data, ['id_setting' => 1]);
    if ($exec) {
        $ektensi = ['jpg', 'png'];
        if ($_FILES['logo']['name'] <> '') {
            $logo = $_FILES['logo']['name'];
            $temp = $_FILES['logo']['tmp_name'];
            $ext = explode('.', $logo);
            $ext = end($ext);
            if (in_array($ext, $ektensi)) {
                $dest = 'dist/img/logo' . rand(1, 100) . '.' . $ext;
                $upload = move_uploaded_file($temp, '../../' . $dest);
                if ($upload) {
                    $exec = update($koneksi, 'setting', ['logo' => $dest], ['id_setting' => 1]);
                } else {
                    echo "gagal";
                }
            }
        }
        if ($_FILES['ttd']['name'] <> '') {
            $logo = $_FILES['ttd']['name'];
            $temp = $_FILES['ttd']['tmp_name'];
            $ext = explode('.', $logo);
            $ext = end($ext);
            if (in_array($ext, $ektensi)) {
                $dest = 'dist/img/ttd' . '.' . $ext;
                $upload = move_uploaded_file($temp, '../../' . $dest);
            }
        }
        if ($_FILES['bc']['name'] <> '') {
            $logo = $_FILES['bc']['name'];
            $temp = $_FILES['bc']['tmp_name'];
            $ext = explode('.', $logo);
            $ext = end($ext);
            if (in_array($ext, $ektensi)) {
                $dest = 'dist/img/bc' . '.' . $ext;
                $upload = move_uploaded_file($temp, '../../' . $dest);
                if ($upload) {
                    $exec = update($koneksi, 'setting', ['bc' => $dest], ['id_setting' => 1]);
                } else {
                    echo "gagal";
                }
            }
        }
    } else {
        echo "Gagal menyimpan";
    }
}
if ($pg == 'tambah') {
    $data = [
        'id_kelas'     => $_POST['id_kelas'],
        'idpk'         => $_POST['idpk'],
        'nis'          => $_POST['nis'],
        'no_peserta'   => $_POST['no_peserta'],
        'nama'         => str_replace("'", "&#39;", $_POST['nama']),
        'sesi'         => $_POST['idsesi'],
        'ruang'        => $_POST['ruang'],
        'level'        => $_POST['level'],
        'username'     => $_POST['username'],
        'password'     => $_POST['pass1'],
        'server'       => $_POST['server'],
        'agama'        => $_POST['agama']
    ];
    $cekuser = rowcount($koneksi, 'siswa', ['username' => $_POST['username']]);
    if ($cekuser > 0) {
        echo "username sudah ada";
    } else {
        if ($_POST['pass1'] <> $_POST['pass2']) {
            echo "password tidak sama";
        } else {
            $exec = insert($koneksi, 'siswa', $data);
            echo $exec;
        }
    }
}
if ($pg == 'setting_clear') {
    $pengawas = fetch($koneksi, 'pengawas', ['id_pengawas' => $_SESSION['id_pengawas']]);
    $password = $_POST['password'];
    if (!password_verify($password, $pengawas['password'])) {
        echo "password salah";
    } else {
        if (!empty($_POST['data'])) {
            $data = $_POST['data'];
            if ($data <> '') {
                foreach ($data as $table) {
                    if ($table <> 'pengawas') {
                        mysqli_query($koneksi, "TRUNCATE $table");
                    } else {
                        mysqli_query($koneksi, "DELETE FROM $table WHERE level!='admin'");
                    }
                }
                echo "ok";
            }
        }
    }
}
if ($pg == 'setting_restore') {
    @set_time_limit(0);
    @ini_set('memory_limit', '512M');
    @ini_set('max_execution_time', '0');

    if (!isset($_FILES['datafile'])) {
        echo "Tidak ada berkas yang diunggah.";
        exit;
    }

    $file = $_FILES['datafile'];
    if ($file['error'] !== UPLOAD_ERR_OK) {
        $errorMessages = [
            UPLOAD_ERR_INI_SIZE   => 'Ukuran file melebihi batas upload_max_filesize di konfigurasi PHP server.',
            UPLOAD_ERR_FORM_SIZE  => 'Ukuran file melebihi batas form.',
            UPLOAD_ERR_PARTIAL    => 'File hanya terunggah sebagian. Silakan ulangi kembali.',
            UPLOAD_ERR_NO_FILE    => 'Tidak ada file yang dipilih.',
            UPLOAD_ERR_NO_TMP_DIR => 'Folder temporary server tidak ditemukan.',
            UPLOAD_ERR_CANT_WRITE => 'Gagal menyimpan file ke disk server.',
            UPLOAD_ERR_EXTENSION  => 'Ekstensi PHP membatalkan upload file.'
        ];
        $msg = $errorMessages[$file['error']] ?? 'Kode error unggah: ' . $file['error'];
        echo "Gagal mengunggah file: " . $msg;
        exit;
    }

    $nama_file = $file['name'];
    $tmp_file  = $file['tmp_name'];
    $ext = strtolower(pathinfo($nama_file, PATHINFO_EXTENSION));

    if ($ext !== 'sql') {
        echo "Format file tidak didukung! Hanya file database berekstensi .sql yang diperbolehkan.";
        exit;
    }

    require("../../config/config.database.php");

    // Simpan file sql sementara di direktori yang memiliki hak izin tulis
    $uploadDir = is_writable(__DIR__) ? __DIR__ : sys_get_temp_dir();
    $alamatfile = rtrim($uploadDir, '/\\') . '/restore_' . time() . '_' . preg_replace('/[^a-zA-Z0-9_\.-]/', '', $nama_file);

    if (!move_uploaded_file($tmp_file, $alamatfile)) {
        echo "Gagal memindahkan file hasil upload ke folder sementara server.";
        exit;
    }

    $handle = @fopen($alamatfile, "r");
    if (!$handle) {
        if (file_exists($alamatfile)) {
            @unlink($alamatfile);
        }
        echo "Gagal membuka file database untuk diproses.";
        exit;
    }

    mysqli_query($koneksi, "SET sql_mode = ''");
    mysqli_query($koneksi, "SET FOREIGN_KEY_CHECKS = 0");

    $templine = '';
    while (($line = fgets($handle)) !== false) {
        $trimmed = trim($line);
        if ($trimmed === '' || substr($trimmed, 0, 2) === '--' || substr($trimmed, 0, 2) === '/*' || substr($trimmed, 0, 1) === '#') {
            continue;
        }

        $templine .= $line;

        if (substr($trimmed, -1) === ';') {
            try {
                mysqli_query($koneksi, $templine);
            } catch (Throwable $e) {
                // Lanjutkan jika ada warning atau baris query minor
            }
            $templine = '';
        }
    }
    fclose($handle);

    // Hapus file temporary SQL setelah restore selesai
    if (file_exists($alamatfile)) {
        @unlink($alamatfile);
    }

    echo "ok";
    exit;
}
