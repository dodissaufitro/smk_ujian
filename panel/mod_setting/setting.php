<?php
cek_session_admin();
$info1 = $info2 = $info3 = $info4 = '';
$admin = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM pengawas WHERE level='admin' AND id_pengawas='1'"));
$setting = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM setting WHERE id_setting='1'"));
$setting['alamat'] = str_replace('<br />', '', $setting['alamat']);
$setting['header'] = str_replace('<br />', '', $setting['header']);
?>
<div class='row'>
    <div class='col-md-12'>
        <div class="box box-solid">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="box-header with-border">
                <h3 class="box-title"><i class="fas fa-tools fa-2x fa-fw"></i> Pengaturan</h3>
            </div>
            <div class="box-body no-padding ">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">Pengaturan Umum</a></li>
                        <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Hapus Data</a></li>
                        <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">Backup & Restore</a></li>
                        <li class=""><a href="#tab_4" data-toggle="tab" aria-expanded="false">Backup Master Soal</a></li>

                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <form id="formpengaturan" action='' method='post' enctype='multipart/form-data'>

                                <div class='box-body'>
                                    <button type='submit' name='submit1' class='btn btn-flat pull-right btn-success' style='margin-bottom:5px'><i class='fa fa-check'></i> Simpan</button>
                                    <?= $info1 ?>
                                    <div class='form-group'>
                                        <label>Nama Aplikasi</label>
                                        <input type='text' name='aplikasi' value="<?= $setting['aplikasi'] ?>" class='form-control' required='true' />
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Nama Sekolah</label>
                                                <input type='text' name='sekolah' value="<?= $setting['sekolah'] ?>" class='form-control' required='true' />
                                            </div>
                                            <div class='col-md-6'>
                                                <label>Kode Sekolah</label>
                                                <input type='text' name='kode' value="<?= $setting['kode_sekolah'] ?>" class='form-control' required='true' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Alamat Server / Ip Server</label>
                                                <input type='text' name='ipserver' value="<?= $setting['ip_server'] ?>" class='form-control' />
                                            </div>
                                            <div class='col-md-6'>
                                                <label>Waktu Server</label>
                                                <select name='waktu' class='form-control' required='true'>
                                                    <option value="<?= $setting['waktu'] ?>"><?= $setting['waktu'] ?></option>
                                                    <option value='Asia/Jakarta'>Asia/Jakarta</option>
                                                    <option value='Asia/Makassar'>Asia/Makassar</option>
                                                    <option value='Asia/Jayapura'>Asia/Jayapura</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class='form-group'>
                                                <label>Token Sinkronisasi</label>
                                                <div class="input-group input-group-sm">
                                                    <input type="text" name='token_api' class="form-control" id='tokenapi' value="<?= $setting['token_api'] ?>" readonly>
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-info btn-flat" id='buattoken'><i class="fas fa-spinner    "></i></button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class='form-group'>
                                                <label>Jenjang</label>
                                                <select name='jenjang' class='form-control' required='true'>
                                                    <option value="<?= $setting['jenjang'] ?>"><?= $setting['jenjang'] ?></option>
                                                    <option value='SD'>SD/MI</option>
                                                    <option value='SMP'>SMP/MTS</option>
                                                    <option value='SMK'>SMK/SMA/MA</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <label>Kepala Sekolah</label>
                                        <input type='text' name='kepsek' value="<?= $setting['kepsek'] ?>" class='form-control' />
                                    </div>
                                    <div class='form-group'>
                                        <label>NIP Kepala Sekolah</label>
                                        <input type='text' name='nip' value="<?= $setting['nip'] ?>" class='form-control' />
                                    </div>
                                    <div class='form-group'>
                                        <label>Alamat</label>
                                        <textarea name='alamat' class='form-control' rows='3'><?= $setting['alamat'] ?></textarea>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Kecamatan</label>
                                                <input type='text' name='kecamatan' value="<?= $setting['kecamatan'] ?> " class='form-control' />
                                            </div>
                                            <div class='col-md-6'>
                                                <label>Kota/Kabupaten</label>
                                                <input type='text' name='kota' value="<?= $setting['kota'] ?>" class='form-control' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Telepon</label>
                                                <input type='text' name='telp' value="<?= $setting['telp'] ?>" class='form-control' />
                                            </div>
                                            <div class='col-md-6'>
                                                <label>Fax</label>
                                                <input type='text' name='fax' value="<?= $setting['fax'] ?>" class='form-control' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Website</label>
                                                <input type='text' name='web' value="<?= $setting['web'] ?>" class='form-control' />
                                            </div>
                                            <div class='col-md-6'>
                                                <label>E-mail</label>
                                                <input type='text' name='email' value="<?= $setting['email'] ?>" class='form-control' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Logo</label>
                                                <input type='file' name='logo' class='form-control' />
                                            </div>
                                            <div class='col-md-2'>
                                                &nbsp;<br />
                                                <img class='img img-responsive' src="<?= $homeurl ?>/<?= $setting['logo'] ?>" height='50' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Background</label>
                                                <input type='file' name='bc' class='form-control' />
                                            </div>
                                            <div class='col-md-2'>
                                                &nbsp;<br />
                                                <img class='img img-responsive' src="<?= $homeurl ?>/<?= $setting['bc'] ?>" height='50' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <label>Tanda Tangan</label>
                                                <input type='file' name='ttd' class='form-control' />
                                            </div>
                                            <div class='col-md-2'>
                                                &nbsp;<br />
                                                <img class='img img-responsive' src="
												<?php echo $homeurl . '/dist/img/ttd.png' . '?date=' . time(); ?> ?>" height='50' />
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <label>Header Laporan</label>
                                        <textarea name='header' class='form-control' rows='3'><?= $setting['header'] ?></textarea>
                                    </div>
                                </div><!-- /.box-body -->

                            </form>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="tab_2">
                            <form id='formhapusdata' action='' method='post'>
                                <div class='box-body'>
                                    <?= $info4 ?>

                                    <div class='form-group'>
                                        <label>Pilih Data</label>
                                        <div class='row'>
                                            <div class='col-md-5'>
                                                <div class='checkbox'>
                                                    <small class='label bg-purple'>Pilih Data Hasil Nilai</small><br />
                                                    <label><input type='checkbox' name='data[]' value='nilai' /> Data Nilai</label><br />

                                                    <label><input type='checkbox' name='data[]' value='jawaban' /> Data Jawaban</label><br />
                                                    <small class='label bg-green'>Pilih Data Ujian</small><br />
                                                    <label><input type='checkbox' name='data[]' value='soal' /> Data Soal</label><br />
                                                    <label><input type='checkbox' name='data[]' value='mapel' /> Data Bank Soal</label><br />
                                                    <label><input type='checkbox' name='data[]' value='ujian' /> Data Jadwal Ujian</label><br />
                                                    <label><input type='checkbox' name='data[]' value='berita' /> Data Berita Acara</label><br />
                                                    <label><input type='checkbox' name='data[]' value='tugas' /> Data Tugas</label><br />
                                                    <label><input type='checkbox' name='data[]' value='jawaban_tugas' /> Data Jawaban Tugas</label><br />

                                                    <small class='label label-danger'>Pilih Data Master</small><br />
                                                    <label><input type='checkbox' name='data[]' value='siswa' /> Data Siswa</label><br />
                                                    <label><input type='checkbox' name='data[]' value='kelas' /> Data Kelas</label><br />
                                                    <label><input type='checkbox' name='data[]' value='mata_pelajaran' /> Data Mata Pelajaran</label><br />
                                                    <label><input type='checkbox' name='data[]' value='pk' /> Data Jurusan</label><br />
                                                    <label><input type='checkbox' name='data[]' value='level' /> Data Level</label><br />
                                                    <label><input type='checkbox' name='data[]' value='ruang' /> Data Ruangan</label><br />
                                                    <label><input type='checkbox' name='data[]' value='sesi' /> Data Sesi</label><br />

                                                </div>
                                            </div>
                                            <div class='col-md-7'>
                                                <button type='submit' name='submit3' class='btn btn-sm bg-maroon'><i class='fa fa-trash-o'></i> Kosongkan</button>
                                                <div class='form-group'>
                                                    <label>Password Admin</label>
                                                    <input type='password' name='password' class='form-control' required='true' />
                                                </div>

                                                <p class='text-danger'><i class='fa fa-warning'></i> <strong>Mohon di ingat!</strong> Data yang telah dikosongkan tidak dapat dikembalikan.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->
                            </form>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="tab_3">
                            <div class='col-md-12 notif'></div>
                            <div class='col-md-6'>
                                <div class='box box-solid'>
                                    <div class='box-header '>
                                        <h3 class='box-title'>Backup Data</h3>
                                    </div><!-- /.box-header -->
                                    <div class='box-body'>
                                        <p>Klik Tombol dibawah ini untuk membackup database </p>
                                        <button id='btnbackup' class='btn btn-flat btn-success'><i class='fa fa-database'></i> Backup Data</button>
                                    </div><!-- /.box-body -->
                                </div><!-- /.box -->
                            </div>
                            <div class='col-md-6'>
                                <div class='box box-solid'>
                                    <div class='box-header '>
                                        <h3 class='box-title'>Restore Data</h3>
                                    </div><!-- /.box-header -->
                                    <div class='box-body'>
                                        <form id='formrestore' enctype='multipart/form-data'>
                                            <p>Pilih file cadangan database (format <b>.sql</b>) lalu klik tombol Restore Data:</p>
                                            <div class='form-group'>
                                                <input class='form-control' name='datafile' id='datafile_input' type='file' accept='.sql' required />
                                            </div>
                                            <button type='submit' name='restore' id='btnrestore' class='btn btn-flat btn-success'>
                                                <i class='fa fa-database'></i> Restore Data
                                            </button>
                                        </form>

                                        <!-- Indikator Progres di dalam Card -->
                                        <div id='card-restore-progress' style='display: none; margin-top: 15px;'>
                                            <hr style='margin: 10px 0;' />
                                            <div style='margin-bottom: 5px;' class='clearfix'>
                                                <strong id='card-restore-status' style='font-size: 12px; color: #333;'>
                                                    <i class='fa fa-spinner fa-spin'></i> Mengunggah berkas database...
                                                </strong>
                                                <span id='card-restore-percent' class='pull-right' style='font-weight: bold; color: #02948d;'>0%</span>
                                            </div>
                                            <div class='progress progress-striped active' style='height: 20px; border-radius: 10px; margin-bottom: 5px; background-color: #f1f3f5;'>
                                                <div id='card-restore-bar' class='progress-bar progress-bar-success' role='progressbar' style='width: 0%; line-height: 20px; font-size: 11px; font-weight: bold; min-width: 2.5em;'>
                                                    0%
                                                </div>
                                            </div>
                                            <small id='card-restore-size' class='text-muted' style='font-size: 11px;'>0 KB / 0 KB</small>
                                        </div>
                                    </div><!-- /.box-body -->
                                </div><!-- /.box -->
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_4">
                            <div class="row">
                                <div class='col-md-12 notif_mapel'></div>
                                <div class='col-md-12'>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <label for="mapel" class="col-sm-2">Mapel yang Tersedia</label>
                                            <div class="col-sm-10">
                                                <select name="mapel_id" id="mapel_id" class="form-control select2" style="width: 100%;" required>
                                                    <?php $mapelbackup = mysqli_query($koneksi, "SELECT id_mapel,kode FROM mapel GROUP BY id_mapel ORDER BY id_mapel ASC"); ?>
                                                    <?php while ($mapelb = mysqli_fetch_array($mapelbackup)) : ?>
                                                        <option value="<?= $mapelb['id_mapel']  ?>"><?= $mapelb['kode'] ?></option>
                                                    <?php endwhile ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="panel-footer clearfix">
                                            <div class="pull-right">
                                                <button id='mastersoal' class='btn btn-flat btn-success'><i class='fa fa-database'></i> Proses</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Progres Restore Database -->
<div class="modal fade" id="modal-progress-restore" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="modalRestoreTitle" aria-hidden="true">
    <div class="modal-dialog" role="document" style="margin-top: 10vh; max-width: 520px;">
        <div class="modal-content" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.3); overflow: hidden; border: none;">
            <div class="modal-header" style="background: linear-gradient(135deg, #0073b7, #02948d); color: #fff; padding: 15px 20px;">
                <h4 class="modal-title" id="modalRestoreTitle" style="font-weight: 600; font-size: 16px; margin: 0; color: #fff;">
                    <i class="fa fa-database"></i> Proses Restore Database
                </h4>
            </div>
            <div class="modal-body" style="padding: 25px 25px 20px;">
                <div class="text-center" style="margin-bottom: 20px;">
                    <div id="restore-icon-container" style="font-size: 48px; color: #02948d; margin-bottom: 12px;">
                        <i id="restore-icon" class="fa fa-cloud-upload-alt"></i>
                    </div>
                    <h4 id="restore-title" style="margin: 0 0 6px; font-weight: 600; color: #2c3e50; font-size: 18px;">
                        Mengunggah File Database...
                    </h4>
                    <p id="restore-subtext" class="text-muted" style="margin: 0; font-size: 13px;">
                        Mohon tunggu, progres upload sedang berjalan.
                    </p>
                </div>

                <!-- Bar Persentase Progres -->
                <div style="margin-bottom: 8px;">
                    <div class="progress" style="height: 26px; border-radius: 13px; background-color: #e9ecef; box-shadow: inset 0 1px 3px rgba(0,0,0,0.15); margin-bottom: 0;">
                        <div id="restore-progress-bar" class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" 
                             style="width: 0%; line-height: 26px; font-size: 13px; font-weight: bold; background-color: #02948d; min-width: 2.5em; transition: width 0.2s ease;">
                            0%
                        </div>
                    </div>
                </div>

                <!-- Info detail: ukuran dan persentase -->
                <div class="clearfix" style="font-size: 12px; color: #666; margin-bottom: 15px;">
                    <span id="restore-size-info" class="pull-left"><i class="fa fa-file-alt"></i> 0 KB / 0 KB</span>
                    <span id="restore-percent-info" class="pull-right" style="font-weight: bold; color: #02948d; font-size: 13px;">0%</span>
                </div>

                <!-- Peringatan saat fase eksekusi query SQL -->
                <div id="restore-processing-alert" class="alert alert-info" style="display: none; margin-bottom: 0; padding: 12px 15px; border-radius: 8px; font-size: 12px; line-height: 1.5;">
                    <i class="fa fa-spinner fa-spin"></i> <strong>File 100% Terunggah!</strong><br />
                    Server sedang mengeksekusi struktur tabel dan query SQL ke MySQL. Proses ini memerlukan waktu tergantung ukuran database. <b>Harap jangan menutup atau merefresh halaman ini!</b>
                </div>

                <!-- Kotak Pesan Error jika gagal -->
                <div id="restore-error-alert" class="alert alert-danger" style="display: none; margin-bottom: 0; padding: 12px 15px; border-radius: 8px; font-size: 12px; line-height: 1.5;">
                    <i class="fa fa-exclamation-triangle"></i> <span id="restore-error-msg">Terjadi kesalahan saat memproses database.</span>
                </div>
            </div>
            <div class="modal-footer" id="restore-modal-footer" style="display: none; padding: 12px 20px; background-color: #f8f9fa;">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            </div>
        </div>
    </div>
</div>

<script>
    $('#mastersoal').click(function() {
        var mapel_id = $('#mapel_id').val();
        $('.notif_mapel').load('mod_setting/backup_excel.php?mapel_id=' + mapel_id);
        console.log('sukses');
    });
    $('#btnbackup').click(function() {
        $('.notif').load('mod_setting/backup.php');
        console.log('sukses');
    });
    $("#buattoken").click(function() {
        // set the length of the string
        var stringLength = 15;

        // list containing characters for the random string
        var stringArray = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];


        var rndString = "";

        // build a string with random characters
        for (var i = 1; i < stringLength; i++) {
            var rndNum = Math.ceil(Math.random() * stringArray.length) - 1;
            rndString = rndString + stringArray[rndNum];
        };

        $("#tokenapi").val(rndString);

    });
    function formatBytesRestore(bytes, decimals) {
        if (!bytes || bytes === 0) return '0 Bytes';
        var k = 1024;
        var dm = (decimals === undefined || decimals < 0) ? 2 : decimals;
        var sizes = ['Bytes', 'KB', 'MB', 'GB'];
        var i = Math.floor(Math.log(bytes) / Math.log(k));
        return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
    }

    $('#formrestore').submit(function(e) {
        e.preventDefault();
        var fileInput = $('#datafile_input')[0];
        if (!fileInput.files || fileInput.files.length === 0) {
            iziToast.warning({
                title: 'Perhatian',
                message: 'Silakan pilih file .sql terlebih dahulu!',
                position: 'topRight'
            });
            return false;
        }

        var file = fileInput.files[0];
        if (!file.name.toLowerCase().endsWith('.sql')) {
            iziToast.error({
                title: 'Format Salah',
                message: 'Hanya file dengan ekstensi .sql yang diperbolehkan!',
                position: 'topRight'
            });
            return false;
        }

        var data = new FormData(this);

        // Reset tampilan modal dan card progres
        $('#restore-icon').attr('class', 'fa fa-cloud-upload-alt');
        $('#restore-icon-container').css('color', '#02948d');
        $('#restore-title').text('Mengunggah File Database...');
        $('#restore-subtext').text('Mohon tunggu, progres upload sedang berjalan.');
        $('#restore-progress-bar')
            .css('width', '0%')
            .text('0%')
            .removeClass('progress-bar-danger')
            .addClass('progress-bar-success progress-bar-striped active')
            .css('background-color', '#02948d');
        $('#restore-percent-info').text('0%');
        $('#restore-size-info').html('<i class="fa fa-file-alt"></i> 0 KB / ' + formatBytesRestore(file.size));
        $('#restore-processing-alert').hide();
        $('#restore-error-alert').hide();
        $('#restore-modal-footer').hide();

        // Tampilan card progres
        $('#card-restore-status').html('<i class="fa fa-upload"></i> Mengunggah file database...');
        $('#card-restore-percent').text('0%');
        $('#card-restore-bar').css('width', '0%').text('0%').removeClass('progress-bar-danger').addClass('progress-bar-success active').css('background-color', '#02948d');
        $('#card-restore-size').text('0 KB / ' + formatBytesRestore(file.size));
        $('#card-restore-progress').slideDown();

        // Kunci tombol submit
        $('#btnrestore').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Memproses...');

        // Tampilkan Modal Progres
        $('#modal-progress-restore').modal({
            backdrop: 'static',
            keyboard: false
        });

        $.ajax({
            type: 'POST',
            url: 'mod_setting/crud_setting.php?pg=setting_restore',
            enctype: 'multipart/form-data',
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            xhr: function() {
                var xhr = new window.XMLHttpRequest();
                if (xhr.upload) {
                    xhr.upload.addEventListener('progress', function(evt) {
                        if (evt.lengthComputable) {
                            var percent = Math.round((evt.loaded / evt.total) * 100);
                            var loadedStr = formatBytesRestore(evt.loaded);
                            var totalStr = formatBytesRestore(evt.total);

                            // Update Modal
                            $('#restore-progress-bar').css('width', percent + '%').text(percent + '%');
                            $('#restore-percent-info').text(percent + '%');
                            $('#restore-size-info').html('<i class="fa fa-file-alt"></i> ' + loadedStr + ' / ' + totalStr);

                            // Update Card
                            $('#card-restore-bar').css('width', percent + '%').text(percent + '%');
                            $('#card-restore-percent').text(percent + '%');
                            $('#card-restore-size').text(loadedStr + ' / ' + totalStr);

                            if (percent >= 100) {
                                // Fase 2: Upload 100% selesai, sekarang server mengeksekusi file SQL
                                $('#restore-icon').attr('class', 'fa fa-database fa-spin');
                                $('#restore-title').text('Mengeksekusi Query Database...');
                                $('#restore-subtext').text('File 100% terunggah. Menyimpan struktur dan data ke database MySQL.');
                                $('#restore-processing-alert').slideDown();
                                $('#restore-progress-bar').text('Mengeksekusi SQL (100%)...');

                                $('#card-restore-status').html('<i class="fa fa-database fa-spin"></i> Mengeksekusi query MySQL (100%)...');
                            }
                        }
                    }, false);
                }
                return xhr;
            },
            success: function(response) {
                $('#btnrestore').prop('disabled', false).html('<i class="fa fa-database"></i> Restore Data');
                var res = (response || '').trim();

                if (res === 'ok' || res.indexOf('berhasil') !== -1) {
                    // Berhasil
                    $('#restore-icon').attr('class', 'fa fa-check-circle');
                    $('#restore-icon-container').css('color', '#28a745');
                    $('#restore-title').text('Restore Database Berhasil!');
                    $('#restore-subtext').text('Semua data database telah berhasil dipulihkan.');
                    $('#restore-processing-alert').hide();
                    $('#restore-progress-bar')
                        .removeClass('active progress-bar-striped')
                        .css('background-color', '#28a745')
                        .text('100% Selesai');

                    $('#card-restore-status').html('<i class="fa fa-check text-green"></i> Restore Selesai!');
                    $('#card-restore-bar').removeClass('active').css('background-color', '#28a745');

                    iziToast.success({
                        title: 'Mantap!',
                        message: 'Data database berhasil direstore!',
                        position: 'topRight'
                    });

                    // Tutup modal setelah 1.8 detik
                    setTimeout(function() {
                        $('#modal-progress-restore').modal('hide');
                        $('#formrestore')[0].reset();
                    }, 1800);
                } else {
                    // Gagal
                    $('#restore-icon').attr('class', 'fa fa-times-circle');
                    $('#restore-icon-container').css('color', '#dc3545');
                    $('#restore-title').text('Restore Gagal');
                    $('#restore-subtext').text('Terjadi kendala saat memproses berkas database.');
                    $('#restore-processing-alert').hide();
                    $('#restore-progress-bar')
                        .removeClass('active progress-bar-success')
                        .addClass('progress-bar-danger')
                        .css('background-color', '#dc3545');
                    $('#restore-error-msg').text(res || 'Terjadi kesalahan pada server.');
                    $('#restore-error-alert').slideDown();
                    $('#restore-modal-footer').show();

                    $('#card-restore-status').html('<i class="fa fa-times text-red"></i> Restore Gagal!');
                    $('#card-restore-bar').removeClass('active progress-bar-success').addClass('progress-bar-danger');

                    iziToast.error({
                        title: 'Gagal',
                        message: res || 'Gagal restore data database',
                        position: 'topRight'
                    });
                }
            },
            error: function(xhr, status, error) {
                $('#btnrestore').prop('disabled', false).html('<i class="fa fa-database"></i> Restore Data');

                $('#restore-icon').attr('class', 'fa fa-times-circle');
                $('#restore-icon-container').css('color', '#dc3545');
                $('#restore-title').text('Koneksi Terputus / Error');
                $('#restore-subtext').text('Terjadi kendala jaringan atau batas waktu server terlampaui.');
                $('#restore-processing-alert').hide();
                $('#restore-progress-bar')
                    .removeClass('active progress-bar-success')
                    .addClass('progress-bar-danger')
                    .css('background-color', '#dc3545');
                $('#restore-error-msg').text('Error HTTP: ' + status + ' (' + error + '). Periksa koneksi internet atau batas upload php.ini.');
                $('#restore-error-alert').slideDown();
                $('#restore-modal-footer').show();

                $('#card-restore-status').html('<i class="fa fa-times text-red"></i> Gagal Jaringan!');
                $('#card-restore-bar').removeClass('active progress-bar-success').addClass('progress-bar-danger');

                iziToast.error({
                    title: 'Error',
                    message: 'Terjadi kesalahan: ' + error,
                    position: 'topRight'
                });
            }
        });
        return false;
    });
    $('#formpengaturan').submit(function(e) {
        e.preventDefault();
        var data = new FormData(this);
        //console.log(data);
        $.ajax({
            type: 'POST',
            url: 'mod_setting/crud_setting.php?pg=setting_app',
            enctype: 'multipart/form-data',
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            success: function(data) {
                iziToast.success({
                    title: 'Mantap!',
                    message: 'data berhasil diperbarui',
                    position: 'topRight'
                });
                setTimeout(function() {
                    window.location.reload();
                }, 2000);

            }
        });
        return false;
    });
    $('#formhapusdata').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: 'mod_setting/crud_setting.php?pg=setting_clear',
            data: $(this).serialize(),
            success: function(data) {
                console.log(data);
                if (data == "ok") {
                    iziToast.success({
                        title: 'Mantap!',
                        message: 'data berhasil dikosongkan',
                        position: 'topRight'
                    });
                } else {
                    iziToast.error({
                        title: 'Maaf!',
                        message: data,
                        position: 'topRight'
                    });
                }

            }
        });
        return false;
    });
</script>