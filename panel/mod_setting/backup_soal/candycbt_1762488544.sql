
/*---------------------------------------------------------------
  SQL DB BACKUP 07.11.2025 11:09 
  HOST: localhost
  DATABASE: candy294
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `file_pendukung` VALUES   ('363','18','21653565573&lt;a:blipr:embed=&quot;rId8&quot;cstat',NULL);
INSERT INTO `file_pendukung` VALUES ('364','18','17586830753.png&amp;lt;br&amp;gt;Perusahaanyangmem',NULL);
INSERT INTO `file_pendukung` VALUES ('365','18','17586830752.png',NULL);
INSERT INTO `file_pendukung` VALUES ('366','12','17586895087.png',NULL);
INSERT INTO `file_pendukung` VALUES ('367','12','17586895086.png',NULL);
INSERT INTO `file_pendukung` VALUES ('368','12','17586895084.png',NULL);
INSERT INTO `file_pendukung` VALUES ('369','12','17586895082.png',NULL);
INSERT INTO `file_pendukung` VALUES ('370','12','17586895081.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('371','12','17586895088.png',NULL);
INSERT INTO `file_pendukung` VALUES ('372','12','17586895085.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('373','12','242443078956917586895083.png',NULL);
INSERT INTO `file_pendukung` VALUES ('374','12','17586904287.png',NULL);
INSERT INTO `file_pendukung` VALUES ('375','12','17586904286.png',NULL);
INSERT INTO `file_pendukung` VALUES ('376','12','17586904284.png',NULL);
INSERT INTO `file_pendukung` VALUES ('377','12','17586904282.png',NULL);
INSERT INTO `file_pendukung` VALUES ('378','12','17586904281.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('379','12','17586904288.png',NULL);
INSERT INTO `file_pendukung` VALUES ('380','12','17586904285.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('381','12','242443078956917586904283.png',NULL);
INSERT INTO `file_pendukung` VALUES ('382','21','&lt;a:blipr:embed=&quot;rId10&quot;cstate=&quot;pr',NULL);
INSERT INTO `file_pendukung` VALUES ('383','21','17588627543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('384','21','17588627542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('385','21','17588627541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('386','21','17588627546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('387','21','17588627544.png',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `jenis` VALUES   ('SAS','SUMATIF AKHIR SEMESTER','tidak');
INSERT INTO `jenis` VALUES ('STS','SUMATIF TENGAH SEMESTER','aktif');
INSERT INTO `jenis` VALUES ('USBK','Ujian Sekolah','tidak');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `kelas` VALUES   ('XIIAKT1','12','XIIAKT1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIAKT2','12','XIIAKT2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIBRT','12','XIIBRT',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIDKV','12','XIIDKV',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIKL','12','XIIKL',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIMP1','12','XIIMP1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIIMP2','12','XIIMP2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIITKJ','12','XIITKJ',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `level` VALUES   ('12','12',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=20341 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `log` VALUES   ('19295','454','login','masuk','2025-10-04 13:58:58');
INSERT INTO `log` VALUES ('19296','461','login','masuk','2025-10-04 13:59:29');
INSERT INTO `log` VALUES ('19297','447','login','masuk','2025-10-04 13:59:29');
INSERT INTO `log` VALUES ('19298','507','login','masuk','2025-10-04 13:59:49');
INSERT INTO `log` VALUES ('19299','482','login','masuk','2025-10-04 14:00:03');
INSERT INTO `log` VALUES ('19300','462','login','masuk','2025-10-04 14:00:06');
INSERT INTO `log` VALUES ('19301','438','login','masuk','2025-10-04 14:00:10');
INSERT INTO `log` VALUES ('19302','439','login','masuk','2025-10-04 14:00:10');
INSERT INTO `log` VALUES ('19303','480','login','masuk','2025-10-04 14:00:13');
INSERT INTO `log` VALUES ('19304','450','login','masuk','2025-10-04 14:00:14');
INSERT INTO `log` VALUES ('19305','461','testongoing','sedang ujian','2025-10-04 14:00:14');
INSERT INTO `log` VALUES ('19306','527','login','masuk','2025-10-04 14:00:16');
INSERT INTO `log` VALUES ('19307','447','testongoing','sedang ujian','2025-10-04 14:00:17');
INSERT INTO `log` VALUES ('19308','454','testongoing','sedang ujian','2025-10-04 14:00:17');
INSERT INTO `log` VALUES ('19309','517','login','masuk','2025-10-04 14:00:18');
INSERT INTO `log` VALUES ('19310','474','login','masuk','2025-10-04 14:00:19');
INSERT INTO `log` VALUES ('19311','480','testongoing','sedang ujian','2025-10-04 14:00:19');
INSERT INTO `log` VALUES ('19312','450','testongoing','sedang ujian','2025-10-04 14:00:20');
INSERT INTO `log` VALUES ('19313','439','testongoing','sedang ujian','2025-10-04 14:00:22');
INSERT INTO `log` VALUES ('19314','469','login','masuk','2025-10-04 14:00:22');
INSERT INTO `log` VALUES ('19315','435','login','masuk','2025-10-04 14:00:24');
INSERT INTO `log` VALUES ('19316','462','testongoing','sedang ujian','2025-10-04 14:00:25');
INSERT INTO `log` VALUES ('19317','438','testongoing','sedang ujian','2025-10-04 14:00:26');
INSERT INTO `log` VALUES ('19318','457','login','masuk','2025-10-04 14:00:29');
INSERT INTO `log` VALUES ('19319','474','testongoing','sedang ujian','2025-10-04 14:00:30');
INSERT INTO `log` VALUES ('19320','522','login','masuk','2025-10-04 14:00:30');
INSERT INTO `log` VALUES ('19321','463','login','masuk','2025-10-04 14:00:32');
INSERT INTO `log` VALUES ('19322','455','login','masuk','2025-10-04 14:00:32');
INSERT INTO `log` VALUES ('19323','469','testongoing','sedang ujian','2025-10-04 14:00:33');
INSERT INTO `log` VALUES ('19324','465','login','masuk','2025-10-04 14:00:34');
INSERT INTO `log` VALUES ('19325','476','login','masuk','2025-10-04 14:00:34');
INSERT INTO `log` VALUES ('19326','444','login','masuk','2025-10-04 14:00:36');
INSERT INTO `log` VALUES ('19327','475','login','masuk','2025-10-04 14:00:36');
INSERT INTO `log` VALUES ('19328','470','login','masuk','2025-10-04 14:00:38');
INSERT INTO `log` VALUES ('19329','466','login','masuk','2025-10-04 14:00:39');
INSERT INTO `log` VALUES ('19330','445','login','masuk','2025-10-04 14:00:42');
INSERT INTO `log` VALUES ('19331','437','login','masuk','2025-10-04 14:00:42');
INSERT INTO `log` VALUES ('19332','444','testongoing','sedang ujian','2025-10-04 14:00:43');
INSERT INTO `log` VALUES ('19333','476','testongoing','sedang ujian','2025-10-04 14:00:44');
INSERT INTO `log` VALUES ('19334','435','testongoing','sedang ujian','2025-10-04 14:00:44');
INSERT INTO `log` VALUES ('19335','480','logout','keluar','2025-10-04 14:00:47');
INSERT INTO `log` VALUES ('19336','506','login','masuk','2025-10-04 14:00:49');
INSERT INTO `log` VALUES ('19337','475','testongoing','sedang ujian','2025-10-04 14:00:50');
INSERT INTO `log` VALUES ('19338','437','testongoing','sedang ujian','2025-10-04 14:00:52');
INSERT INTO `log` VALUES ('19339','457','testongoing','sedang ujian','2025-10-04 14:00:54');
INSERT INTO `log` VALUES ('19340','524','login','masuk','2025-10-04 14:00:59');
INSERT INTO `log` VALUES ('19341','473','login','masuk','2025-10-04 14:00:59');
INSERT INTO `log` VALUES ('19342','465','testongoing','sedang ujian','2025-10-04 14:01:02');
INSERT INTO `log` VALUES ('19343','455','testongoing','sedang ujian','2025-10-04 14:01:04');
INSERT INTO `log` VALUES ('19344','468','login','masuk','2025-10-04 14:01:07');
INSERT INTO `log` VALUES ('19345','460','login','masuk','2025-10-04 14:01:09');
INSERT INTO `log` VALUES ('19346','473','testongoing','sedang ujian','2025-10-04 14:01:09');
INSERT INTO `log` VALUES ('19347','456','login','masuk','2025-10-04 14:01:10');
INSERT INTO `log` VALUES ('19348','445','testongoing','sedang ujian','2025-10-04 14:01:11');
INSERT INTO `log` VALUES ('19349','470','testongoing','sedang ujian','2025-10-04 14:01:11');
INSERT INTO `log` VALUES ('19350','482','testongoing','sedang ujian','2025-10-04 14:01:16');
INSERT INTO `log` VALUES ('19351','468','testongoing','sedang ujian','2025-10-04 14:01:16');
INSERT INTO `log` VALUES ('19352','531','login','masuk','2025-10-04 14:01:16');
INSERT INTO `log` VALUES ('19353','460','testongoing','sedang ujian','2025-10-04 14:01:17');
INSERT INTO `log` VALUES ('19354','463','logout','keluar','2025-10-04 14:01:18');
INSERT INTO `log` VALUES ('19355','426','login','masuk','2025-10-04 14:01:18');
INSERT INTO `log` VALUES ('19356','530','login','masuk','2025-10-04 14:01:19');
INSERT INTO `log` VALUES ('19357','456','testongoing','sedang ujian','2025-10-04 14:01:20');
INSERT INTO `log` VALUES ('19358','426','testongoing','sedang ujian','2025-10-04 14:01:24');
INSERT INTO `log` VALUES ('19359','521','login','masuk','2025-10-04 14:01:27');
INSERT INTO `log` VALUES ('19360','480','login','masuk','2025-10-04 14:01:30');
INSERT INTO `log` VALUES ('19361','479','login','masuk','2025-10-04 14:01:32');
INSERT INTO `log` VALUES ('19362','536','login','masuk','2025-10-04 14:01:36');
INSERT INTO `log` VALUES ('19363','535','login','masuk','2025-10-04 14:01:40');
INSERT INTO `log` VALUES ('19364','480','logout','keluar','2025-10-04 14:01:44');
INSERT INTO `log` VALUES ('19365','509','login','masuk','2025-10-04 14:01:50');
INSERT INTO `log` VALUES ('19366','466','testongoing','sedang ujian','2025-10-04 14:01:53');
INSERT INTO `log` VALUES ('19367','505','login','masuk','2025-10-04 14:01:54');
INSERT INTO `log` VALUES ('19368','484','login','masuk','2025-10-04 14:01:57');
INSERT INTO `log` VALUES ('19369','517','testongoing','sedang ujian','2025-10-04 14:01:59');
INSERT INTO `log` VALUES ('19370','505','testongoing','sedang ujian','2025-10-04 14:02:01');
INSERT INTO `log` VALUES ('19371','440','login','masuk','2025-10-04 14:02:01');
INSERT INTO `log` VALUES ('19372','484','testongoing','sedang ujian','2025-10-04 14:02:04');
INSERT INTO `log` VALUES ('19373','507','testongoing','sedang ujian','2025-10-04 14:02:05');
INSERT INTO `log` VALUES ('19374','506','testongoing','sedang ujian','2025-10-04 14:02:05');
INSERT INTO `log` VALUES ('19375','521','testongoing','sedang ujian','2025-10-04 14:02:05');
INSERT INTO `log` VALUES ('19376','512','login','masuk','2025-10-04 14:02:05');
INSERT INTO `log` VALUES ('19377','509','testongoing','sedang ujian','2025-10-04 14:02:07');
INSERT INTO `log` VALUES ('19378','513','login','masuk','2025-10-04 14:02:08');
INSERT INTO `log` VALUES ('19379','480','login','masuk','2025-10-04 14:02:09');
INSERT INTO `log` VALUES ('19380','440','testongoing','sedang ujian','2025-10-04 14:02:11');
INSERT INTO `log` VALUES ('19381','512','testongoing','sedang ujian','2025-10-04 14:02:13');
INSERT INTO `log` VALUES ('19382','479','testongoing','sedang ujian','2025-10-04 14:02:14');
INSERT INTO `log` VALUES ('19383','537','login','masuk','2025-10-04 14:02:19');
INSERT INTO `log` VALUES ('19384','463','login','masuk','2025-10-04 14:02:20');
INSERT INTO `log` VALUES ('19385','511','login','masuk','2025-10-04 14:02:21');
INSERT INTO `log` VALUES ('19386','524','testongoing','sedang ujian','2025-10-04 14:02:21');
INSERT INTO `log` VALUES ('19387','458','login','masuk','2025-10-04 14:02:23');
INSERT INTO `log` VALUES ('19388','523','login','masuk','2025-10-04 14:02:24');
INSERT INTO `log` VALUES ('19389','530','testongoing','sedang ujian','2025-10-04 14:02:26');
INSERT INTO `log` VALUES ('19390','536','testongoing','sedang ujian','2025-10-04 14:02:30');
INSERT INTO `log` VALUES ('19391','514','login','masuk','2025-10-04 14:02:30');
INSERT INTO `log` VALUES ('19392','463','testongoing','sedang ujian','2025-10-04 14:02:31');
INSERT INTO `log` VALUES ('19393','527','testongoing','sedang ujian','2025-10-04 14:02:31');
INSERT INTO `log` VALUES ('19394','525','login','masuk','2025-10-04 14:02:32');
INSERT INTO `log` VALUES ('19395','537','testongoing','sedang ujian','2025-10-04 14:02:32');
INSERT INTO `log` VALUES ('19396','522','testongoing','sedang ujian','2025-10-04 14:02:32');
INSERT INTO `log` VALUES ('19397','535','testongoing','sedang ujian','2025-10-04 14:02:33');
INSERT INTO `log` VALUES ('19398','458','testongoing','sedang ujian','2025-10-04 14:02:33');
INSERT INTO `log` VALUES ('19399','531','testongoing','sedang ujian','2025-10-04 14:02:35');
INSERT INTO `log` VALUES ('19400','513','testongoing','sedang ujian','2025-10-04 14:02:35');
INSERT INTO `log` VALUES ('19401','526','login','masuk','2025-10-04 14:02:37');
INSERT INTO `log` VALUES ('19402','511','testongoing','sedang ujian','2025-10-04 14:02:38');
INSERT INTO `log` VALUES ('19403','533','login','masuk','2025-10-04 14:02:40');
INSERT INTO `log` VALUES ('19404','539','login','masuk','2025-10-04 14:02:41');
INSERT INTO `log` VALUES ('19405','534','login','masuk','2025-10-04 14:02:44');
INSERT INTO `log` VALUES ('19406','523','testongoing','sedang ujian','2025-10-04 14:02:46');
INSERT INTO `log` VALUES ('19407','516','login','masuk','2025-10-04 14:02:48');
INSERT INTO `log` VALUES ('19408','533','testongoing','sedang ujian','2025-10-04 14:02:52');
INSERT INTO `log` VALUES ('19409','514','testongoing','sedang ujian','2025-10-04 14:02:53');
INSERT INTO `log` VALUES ('19410','446','login','masuk','2025-10-04 14:02:55');
INSERT INTO `log` VALUES ('19411','516','testongoing','sedang ujian','2025-10-04 14:02:57');
INSERT INTO `log` VALUES ('19412','526','testongoing','sedang ujian','2025-10-04 14:03:01');
INSERT INTO `log` VALUES ('19413','446','testongoing','sedang ujian','2025-10-04 14:03:04');
INSERT INTO `log` VALUES ('19414','431','login','masuk','2025-10-04 14:03:07');
INSERT INTO `log` VALUES ('19415','428','login','masuk','2025-10-04 14:03:08');
INSERT INTO `log` VALUES ('19416','525','testongoing','sedang ujian','2025-10-04 14:03:10');
INSERT INTO `log` VALUES ('19417','539','testongoing','sedang ujian','2025-10-04 14:03:11');
INSERT INTO `log` VALUES ('19418','431','testongoing','sedang ujian','2025-10-04 14:03:13');
INSERT INTO `log` VALUES ('19419','428','testongoing','sedang ujian','2025-10-04 14:03:18');
INSERT INTO `log` VALUES ('19420','483','login','masuk','2025-10-04 14:03:21');
INSERT INTO `log` VALUES ('19421','494','login','masuk','2025-10-04 14:03:22');
INSERT INTO `log` VALUES ('19422','534','testongoing','sedang ujian','2025-10-04 14:03:22');
INSERT INTO `log` VALUES ('19423','487','login','masuk','2025-10-04 14:03:28');
INSERT INTO `log` VALUES ('19424','490','login','masuk','2025-10-04 14:03:28');
INSERT INTO `log` VALUES ('19425','564','login','masuk','2025-10-04 14:03:30');
INSERT INTO `log` VALUES ('19426','542','login','masuk','2025-10-04 14:03:30');
INSERT INTO `log` VALUES ('19427','544','login','masuk','2025-10-04 14:03:32');
INSERT INTO `log` VALUES ('19428','492','login','masuk','2025-10-04 14:03:33');
INSERT INTO `log` VALUES ('19429','496','login','masuk','2025-10-04 14:03:34');
INSERT INTO `log` VALUES ('19430','495','login','masuk','2025-10-04 14:03:36');
INSERT INTO `log` VALUES ('19431','490','testongoing','sedang ujian','2025-10-04 14:03:38');
INSERT INTO `log` VALUES ('19432','508','login','masuk','2025-10-04 14:03:41');
INSERT INTO `log` VALUES ('19433','472','login','masuk','2025-10-04 14:03:41');
INSERT INTO `log` VALUES ('19434','495','testongoing','sedang ujian','2025-10-04 14:03:44');
INSERT INTO `log` VALUES ('19435','487','testongoing','sedang ujian','2025-10-04 14:03:45');
INSERT INTO `log` VALUES ('19436','494','testongoing','sedang ujian','2025-10-04 14:03:46');
INSERT INTO `log` VALUES ('19437','492','testongoing','sedang ujian','2025-10-04 14:03:47');
INSERT INTO `log` VALUES ('19438','496','testongoing','sedang ujian','2025-10-04 14:03:50');
INSERT INTO `log` VALUES ('19439','501','login','masuk','2025-10-04 14:03:52');
INSERT INTO `log` VALUES ('19440','480','logout','keluar','2025-10-04 14:03:52');
INSERT INTO `log` VALUES ('19441','502','login','masuk','2025-10-04 14:03:53');
INSERT INTO `log` VALUES ('19442','483','login','masuk','2025-10-04 14:03:55');
INSERT INTO `log` VALUES ('19443','499','login','masuk','2025-10-04 14:04:00');
INSERT INTO `log` VALUES ('19444','488','login','masuk','2025-10-04 14:04:02');
INSERT INTO `log` VALUES ('19445','502','testongoing','sedang ujian','2025-10-04 14:04:02');
INSERT INTO `log` VALUES ('19446','501','testongoing','sedang ujian','2025-10-04 14:04:03');
INSERT INTO `log` VALUES ('19447','508','testongoing','sedang ujian','2025-10-04 14:04:07');
INSERT INTO `log` VALUES ('19448','432','login','masuk','2025-10-04 14:04:07');
INSERT INTO `log` VALUES ('19449','480','login','masuk','2025-10-04 14:04:07');
INSERT INTO `log` VALUES ('19450','472','testongoing','sedang ujian','2025-10-04 14:04:12');
INSERT INTO `log` VALUES ('19451','483','testongoing','sedang ujian','2025-10-04 14:04:13');
INSERT INTO `log` VALUES ('19452','497','login','masuk','2025-10-04 14:04:17');
INSERT INTO `log` VALUES ('19453','432','testongoing','sedang ujian','2025-10-04 14:04:18');
INSERT INTO `log` VALUES ('19454','498','login','masuk','2025-10-04 14:04:19');
INSERT INTO `log` VALUES ('19455','448','login','masuk','2025-10-04 14:04:19');
INSERT INTO `log` VALUES ('19456','499','testongoing','sedang ujian','2025-10-04 14:04:21');
INSERT INTO `log` VALUES ('19457','497','testongoing','sedang ujian','2025-10-04 14:04:23');
INSERT INTO `log` VALUES ('19458','488','testongoing','sedang ujian','2025-10-04 14:04:23');
INSERT INTO `log` VALUES ('19459','544','testongoing','sedang ujian','2025-10-04 14:04:24');
INSERT INTO `log` VALUES ('19460','448','testongoing','sedang ujian','2025-10-04 14:04:24');
INSERT INTO `log` VALUES ('19461','542','testongoing','sedang ujian','2025-10-04 14:04:25');
INSERT INTO `log` VALUES ('19462','498','testongoing','sedang ujian','2025-10-04 14:04:30');
INSERT INTO `log` VALUES ('19463','565','login','masuk','2025-10-04 14:04:35');
INSERT INTO `log` VALUES ('19464','515','login','masuk','2025-10-04 14:04:37');
INSERT INTO `log` VALUES ('19465','504','login','masuk','2025-10-04 14:04:40');
INSERT INTO `log` VALUES ('19466','503','login','masuk','2025-10-04 14:04:42');
INSERT INTO `log` VALUES ('19467','515','testongoing','sedang ujian','2025-10-04 14:04:44');
INSERT INTO `log` VALUES ('19468','464','login','masuk','2025-10-04 14:04:49');
INSERT INTO `log` VALUES ('19469','510','login','masuk','2025-10-04 14:04:50');
INSERT INTO `log` VALUES ('19470','491','login','masuk','2025-10-04 14:04:50');
INSERT INTO `log` VALUES ('19471','503','testongoing','sedang ujian','2025-10-04 14:04:58');
INSERT INTO `log` VALUES ('19472','543','login','masuk','2025-10-04 14:04:59');
INSERT INTO `log` VALUES ('19473','504','testongoing','sedang ujian','2025-10-04 14:04:59');
INSERT INTO `log` VALUES ('19474','491','testongoing','sedang ujian','2025-10-04 14:05:00');
INSERT INTO `log` VALUES ('19475','464','testongoing','sedang ujian','2025-10-04 14:05:03');
INSERT INTO `log` VALUES ('19476','510','testongoing','sedang ujian','2025-10-04 14:05:04');
INSERT INTO `log` VALUES ('19477','543','testongoing','sedang ujian','2025-10-04 14:05:05');
INSERT INTO `log` VALUES ('19478','434','login','masuk','2025-10-04 14:05:05');
INSERT INTO `log` VALUES ('19479','532','login','masuk','2025-10-04 14:05:05');
INSERT INTO `log` VALUES ('19480','552','login','masuk','2025-10-04 14:05:08');
INSERT INTO `log` VALUES ('19481','532','testongoing','sedang ujian','2025-10-04 14:05:11');
INSERT INTO `log` VALUES ('19482','434','testongoing','sedang ujian','2025-10-04 14:05:15');
INSERT INTO `log` VALUES ('19483','528','login','masuk','2025-10-04 14:05:18');
INSERT INTO `log` VALUES ('19484','551','login','masuk','2025-10-04 14:05:20');
INSERT INTO `log` VALUES ('19485','550','login','masuk','2025-10-04 14:05:22');
INSERT INTO `log` VALUES ('19486','433','login','masuk','2025-10-04 14:05:27');
INSERT INTO `log` VALUES ('19487','429','login','masuk','2025-10-04 14:05:27');
INSERT INTO `log` VALUES ('19488','433','testongoing','sedang ujian','2025-10-04 14:05:33');
INSERT INTO `log` VALUES ('19489','528','testongoing','sedang ujian','2025-10-04 14:05:36');
INSERT INTO `log` VALUES ('19490','560','login','masuk','2025-10-04 14:05:38');
INSERT INTO `log` VALUES ('19491','429','testongoing','sedang ujian','2025-10-04 14:05:41');
INSERT INTO `log` VALUES ('19492','430','login','masuk','2025-10-04 14:05:45');
INSERT INTO `log` VALUES ('19493','561','login','masuk','2025-10-04 14:05:46');
INSERT INTO `log` VALUES ('19494','430','testongoing','sedang ujian','2025-10-04 14:05:50');
INSERT INTO `log` VALUES ('19495','481','login','masuk','2025-10-04 14:05:51');
INSERT INTO `log` VALUES ('19496','545','login','masuk','2025-10-04 14:05:53');
INSERT INTO `log` VALUES ('19497','520','login','masuk','2025-10-04 14:05:54');
INSERT INTO `log` VALUES ('19498','425','login','masuk','2025-10-04 14:06:01');
INSERT INTO `log` VALUES ('19499','481','testongoing','sedang ujian','2025-10-04 14:06:04');
INSERT INTO `log` VALUES ('19500','547','login','masuk','2025-10-04 14:06:07');
INSERT INTO `log` VALUES ('19501','520','testongoing','sedang ujian','2025-10-04 14:06:10');
INSERT INTO `log` VALUES ('19502','548','login','masuk','2025-10-04 14:06:15');
INSERT INTO `log` VALUES ('19503','549','login','masuk','2025-10-04 14:06:16');
INSERT INTO `log` VALUES ('19504','453','login','masuk','2025-10-04 14:06:19');
INSERT INTO `log` VALUES ('19505','451','login','masuk','2025-10-04 14:06:21');
INSERT INTO `log` VALUES ('19506','562','login','masuk','2025-10-04 14:06:22');
INSERT INTO `log` VALUES ('19507','453','testongoing','sedang ujian','2025-10-04 14:06:24');
INSERT INTO `log` VALUES ('19508','451','testongoing','sedang ujian','2025-10-04 14:06:27');
INSERT INTO `log` VALUES ('19509','425','testongoing','sedang ujian','2025-10-04 14:06:28');
INSERT INTO `log` VALUES ('19510','467','login','masuk','2025-10-04 14:06:30');
INSERT INTO `log` VALUES ('19511','555','login','masuk','2025-10-04 14:06:31');
INSERT INTO `log` VALUES ('19512','467','testongoing','sedang ujian','2025-10-04 14:06:37');
INSERT INTO `log` VALUES ('19513','478','login','masuk','2025-10-04 14:06:49');
INSERT INTO `log` VALUES ('19514','552','testongoing','sedang ujian','2025-10-04 14:06:53');
INSERT INTO `log` VALUES ('19515','556','login','masuk','2025-10-04 14:06:53');
INSERT INTO `log` VALUES ('19516','493','login','masuk','2025-10-04 14:06:54');
INSERT INTO `log` VALUES ('19517','554','login','masuk','2025-10-04 14:06:55');
INSERT INTO `log` VALUES ('19518','550','testongoing','sedang ujian','2025-10-04 14:06:55');
INSERT INTO `log` VALUES ('19519','548','testongoing','sedang ujian','2025-10-04 14:06:56');
INSERT INTO `log` VALUES ('19520','562','testongoing','sedang ujian','2025-10-04 14:06:56');
INSERT INTO `log` VALUES ('19521','545','testongoing','sedang ujian','2025-10-04 14:06:59');
INSERT INTO `log` VALUES ('19522','549','testongoing','sedang ujian','2025-10-04 14:06:59');
INSERT INTO `log` VALUES ('19523','556','testongoing','sedang ujian','2025-10-04 14:06:59');
INSERT INTO `log` VALUES ('19524','555','testongoing','sedang ujian','2025-10-04 14:07:00');
INSERT INTO `log` VALUES ('19525','557','login','masuk','2025-10-04 14:07:00');
INSERT INTO `log` VALUES ('19526','564','testongoing','sedang ujian','2025-10-04 14:07:01');
INSERT INTO `log` VALUES ('19527','547','testongoing','sedang ujian','2025-10-04 14:07:01');
INSERT INTO `log` VALUES ('19528','565','testongoing','sedang ujian','2025-10-04 14:07:01');
INSERT INTO `log` VALUES ('19529','493','testongoing','sedang ujian','2025-10-04 14:07:03');
INSERT INTO `log` VALUES ('19530','478','testongoing','sedang ujian','2025-10-04 14:07:04');
INSERT INTO `log` VALUES ('19531','554','testongoing','sedang ujian','2025-10-04 14:07:05');
INSERT INTO `log` VALUES ('19532','553','login','masuk','2025-10-04 14:07:07');
INSERT INTO `log` VALUES ('19533','561','testongoing','sedang ujian','2025-10-04 14:07:07');
INSERT INTO `log` VALUES ('19534','560','testongoing','sedang ujian','2025-10-04 14:07:13');
INSERT INTO `log` VALUES ('19535','553','testongoing','sedang ujian','2025-10-04 14:07:14');
INSERT INTO `log` VALUES ('19536','551','testongoing','sedang ujian','2025-10-04 14:07:17');
INSERT INTO `log` VALUES ('19537','557','testongoing','sedang ujian','2025-10-04 14:07:24');
INSERT INTO `log` VALUES ('19538','559','login','masuk','2025-10-04 14:07:29');
INSERT INTO `log` VALUES ('19539','558','login','masuk','2025-10-04 14:07:31');
INSERT INTO `log` VALUES ('19540','566','login','masuk','2025-10-04 14:07:34');
INSERT INTO `log` VALUES ('19541','559','testongoing','sedang ujian','2025-10-04 14:07:42');
INSERT INTO `log` VALUES ('19542','449','login','masuk','2025-10-04 14:07:43');
INSERT INTO `log` VALUES ('19543','566','testongoing','sedang ujian','2025-10-04 14:07:48');
INSERT INTO `log` VALUES ('19544','449','testongoing','sedang ujian','2025-10-04 14:07:50');
INSERT INTO `log` VALUES ('19545','558','testongoing','sedang ujian','2025-10-04 14:08:09');
INSERT INTO `log` VALUES ('19546','471','login','masuk','2025-10-04 14:08:20');
INSERT INTO `log` VALUES ('19547','529','login','masuk','2025-10-04 14:08:20');
INSERT INTO `log` VALUES ('19548','471','testongoing','sedang ujian','2025-10-04 14:08:27');
INSERT INTO `log` VALUES ('19549','529','testongoing','sedang ujian','2025-10-04 14:08:33');
INSERT INTO `log` VALUES ('19550','477','login','masuk','2025-10-04 14:09:20');
INSERT INTO `log` VALUES ('19551','477','testongoing','sedang ujian','2025-10-04 14:09:28');
INSERT INTO `log` VALUES ('19552','452','login','masuk','2025-10-04 14:09:40');
INSERT INTO `log` VALUES ('19553','452','testongoing','sedang ujian','2025-10-04 14:09:50');
INSERT INTO `log` VALUES ('19554','485','login','masuk','2025-10-04 14:10:34');
INSERT INTO `log` VALUES ('19555','567','login','masuk','2025-10-04 14:10:39');
INSERT INTO `log` VALUES ('19556','485','testongoing','sedang ujian','2025-10-04 14:10:43');
INSERT INTO `log` VALUES ('19557','567','testongoing','sedang ujian','2025-10-04 14:11:03');
INSERT INTO `log` VALUES ('19558','569','login','masuk','2025-10-04 14:15:49');
INSERT INTO `log` VALUES ('19559','461','login','Selesai Ujian','2025-10-04 14:15:49');
INSERT INTO `log` VALUES ('19560','462','login','Selesai Ujian','2025-10-04 14:15:52');
INSERT INTO `log` VALUES ('19561','461','testongoing','sedang ujian','2025-10-04 14:15:56');
INSERT INTO `log` VALUES ('19562','462','testongoing','sedang ujian','2025-10-04 14:15:57');
INSERT INTO `log` VALUES ('19563','442','login','masuk','2025-10-04 14:15:58');
INSERT INTO `log` VALUES ('19564','569','testongoing','sedang ujian','2025-10-04 14:15:59');
INSERT INTO `log` VALUES ('19565','442','testongoing','sedang ujian','2025-10-04 14:16:05');
INSERT INTO `log` VALUES ('19566','426','login','Selesai Ujian','2025-10-04 14:16:37');
INSERT INTO `log` VALUES ('19567','426','testongoing','sedang ujian','2025-10-04 14:16:44');
INSERT INTO `log` VALUES ('19568','480','login','Selesai Ujian','2025-10-04 14:16:48');
INSERT INTO `log` VALUES ('19569','480','testongoing','sedang ujian','2025-10-04 14:16:58');
INSERT INTO `log` VALUES ('19570','512','login','Selesai Ujian','2025-10-04 14:18:11');
INSERT INTO `log` VALUES ('19571','512','testongoing','sedang ujian','2025-10-04 14:18:17');
INSERT INTO `log` VALUES ('19572','454','login','Selesai Ujian','2025-10-04 14:18:41');
INSERT INTO `log` VALUES ('19573','454','testongoing','sedang ujian','2025-10-04 14:18:46');
INSERT INTO `log` VALUES ('19574','505','login','Selesai Ujian','2025-10-04 14:18:55');
INSERT INTO `log` VALUES ('19575','492','login','Selesai Ujian','2025-10-04 14:19:00');
INSERT INTO `log` VALUES ('19576','505','testongoing','sedang ujian','2025-10-04 14:19:05');
INSERT INTO `log` VALUES ('19577','492','testongoing','sedang ujian','2025-10-04 14:19:08');
INSERT INTO `log` VALUES ('19578','501','login','Selesai Ujian','2025-10-04 14:19:19');
INSERT INTO `log` VALUES ('19579','501','testongoing','sedang ujian','2025-10-04 14:19:25');
INSERT INTO `log` VALUES ('19580','539','login','Selesai Ujian','2025-10-04 14:19:44');
INSERT INTO `log` VALUES ('19581','498','login','Selesai Ujian','2025-10-04 14:19:48');
INSERT INTO `log` VALUES ('19582','516','login','Selesai Ujian','2025-10-04 14:19:49');
INSERT INTO `log` VALUES ('19583','539','testongoing','sedang ujian','2025-10-04 14:19:58');
INSERT INTO `log` VALUES ('19584','498','testongoing','sedang ujian','2025-10-04 14:20:04');
INSERT INTO `log` VALUES ('19585','516','testongoing','sedang ujian','2025-10-04 14:20:23');
INSERT INTO `log` VALUES ('19586','504','login','Selesai Ujian','2025-10-04 14:20:34');
INSERT INTO `log` VALUES ('19587','502','login','Selesai Ujian','2025-10-04 14:20:34');
INSERT INTO `log` VALUES ('19588','432','login','Selesai Ujian','2025-10-04 14:20:37');
INSERT INTO `log` VALUES ('19589','502','testongoing','sedang ujian','2025-10-04 14:20:41');
INSERT INTO `log` VALUES ('19590','504','testongoing','sedang ujian','2025-10-04 14:20:42');
INSERT INTO `log` VALUES ('19591','429','login','Selesai Ujian','2025-10-04 14:20:47');
INSERT INTO `log` VALUES ('19592','432','testongoing','sedang ujian','2025-10-04 14:20:49');
INSERT INTO `log` VALUES ('19593','429','testongoing','sedang ujian','2025-10-04 14:20:54');
INSERT INTO `log` VALUES ('19594','519','login','masuk','2025-10-04 14:21:08');
INSERT INTO `log` VALUES ('19595','430','login','Selesai Ujian','2025-10-04 14:21:10');
INSERT INTO `log` VALUES ('19596','517','login','Selesai Ujian','2025-10-04 14:21:14');
INSERT INTO `log` VALUES ('19597','430','testongoing','sedang ujian','2025-10-04 14:21:15');
INSERT INTO `log` VALUES ('19598','481','login','Selesai Ujian','2025-10-04 14:21:16');
INSERT INTO `log` VALUES ('19599','481','testongoing','sedang ujian','2025-10-04 14:21:21');
INSERT INTO `log` VALUES ('19600','517','testongoing','sedang ujian','2025-10-04 14:21:24');
INSERT INTO `log` VALUES ('19601','433','login','Selesai Ujian','2025-10-04 14:21:27');
INSERT INTO `log` VALUES ('19602','431','login','Selesai Ujian','2025-10-04 14:21:33');
INSERT INTO `log` VALUES ('19603','433','testongoing','sedang ujian','2025-10-04 14:21:35');
INSERT INTO `log` VALUES ('19604','518','login','masuk','2025-10-04 14:21:35');
INSERT INTO `log` VALUES ('19605','532','login','Selesai Ujian','2025-10-04 14:21:38');
INSERT INTO `log` VALUES ('19606','431','testongoing','sedang ujian','2025-10-04 14:21:39');
INSERT INTO `log` VALUES ('19607','518','testongoing','sedang ujian','2025-10-04 14:21:43');
INSERT INTO `log` VALUES ('19608','532','testongoing','sedang ujian','2025-10-04 14:21:43');
INSERT INTO `log` VALUES ('19609','546','login','masuk','2025-10-04 14:21:56');
INSERT INTO `log` VALUES ('19610','425','login','Selesai Ujian','2025-10-04 14:21:56');
INSERT INTO `log` VALUES ('19611','546','testongoing','sedang ujian','2025-10-04 14:22:04');
INSERT INTO `log` VALUES ('19612','484','login','Selesai Ujian','2025-10-04 14:22:07');
INSERT INTO `log` VALUES ('19613','519','testongoing','sedang ujian','2025-10-04 14:22:11');
INSERT INTO `log` VALUES ('19614','469','login','Selesai Ujian','2025-10-04 14:22:13');
INSERT INTO `log` VALUES ('19615','555','login','Selesai Ujian','2025-10-04 14:22:13');
INSERT INTO `log` VALUES ('19616','484','testongoing','sedang ujian','2025-10-04 14:22:16');
INSERT INTO `log` VALUES ('19617','468','login','Selesai Ujian','2025-10-04 14:22:15');
INSERT INTO `log` VALUES ('19618','467','login','Selesai Ujian','2025-10-04 14:22:18');
INSERT INTO `log` VALUES ('19619','469','testongoing','sedang ujian','2025-10-04 14:22:20');
INSERT INTO `log` VALUES ('19620','468','testongoing','sedang ujian','2025-10-04 14:22:20');
INSERT INTO `log` VALUES ('19621','440','login','Selesai Ujian','2025-10-04 14:22:20');
INSERT INTO `log` VALUES ('19622','453','login','Selesai Ujian','2025-10-04 14:22:23');
INSERT INTO `log` VALUES ('19623','467','testongoing','sedang ujian','2025-10-04 14:22:25');
INSERT INTO `log` VALUES ('19624','425','testongoing','sedang ujian','2025-10-04 14:22:25');
INSERT INTO `log` VALUES ('19625','555','testongoing','sedang ujian','2025-10-04 14:22:26');
INSERT INTO `log` VALUES ('19626','440','testongoing','sedang ujian','2025-10-04 14:22:28');
INSERT INTO `log` VALUES ('19627','453','testongoing','sedang ujian','2025-10-04 14:22:28');
INSERT INTO `log` VALUES ('19628','478','login','Selesai Ujian','2025-10-04 14:22:31');
INSERT INTO `log` VALUES ('19629','478','testongoing','sedang ujian','2025-10-04 14:22:39');
INSERT INTO `log` VALUES ('19630','513','login','Selesai Ujian','2025-10-04 14:22:45');
INSERT INTO `log` VALUES ('19631','434','login','Selesai Ujian','2025-10-04 14:22:58');
INSERT INTO `log` VALUES ('19632','513','testongoing','sedang ujian','2025-10-04 14:23:03');
INSERT INTO `log` VALUES ('19633','447','login','Selesai Ujian','2025-10-04 14:23:07');
INSERT INTO `log` VALUES ('19634','434','testongoing','sedang ujian','2025-10-04 14:23:08');
INSERT INTO `log` VALUES ('19635','435','login','Selesai Ujian','2025-10-04 14:23:10');
INSERT INTO `log` VALUES ('19636','506','login','Selesai Ujian','2025-10-04 14:23:15');
INSERT INTO `log` VALUES ('19637','447','testongoing','sedang ujian','2025-10-04 14:23:19');
INSERT INTO `log` VALUES ('19638','439','login','Selesai Ujian','2025-10-04 14:23:25');
INSERT INTO `log` VALUES ('19639','438','login','Selesai Ujian','2025-10-04 14:23:28');
INSERT INTO `log` VALUES ('19640','435','testongoing','sedang ujian','2025-10-04 14:23:31');
INSERT INTO `log` VALUES ('19641','439','testongoing','sedang ujian','2025-10-04 14:23:31');
INSERT INTO `log` VALUES ('19642','506','testongoing','sedang ujian','2025-10-04 14:23:34');
INSERT INTO `log` VALUES ('19643','494','login','Selesai Ujian','2025-10-04 14:23:36');
INSERT INTO `log` VALUES ('19644','438','testongoing','sedang ujian','2025-10-04 14:23:44');
INSERT INTO `log` VALUES ('19645','470','login','Selesai Ujian','2025-10-04 14:23:51');
INSERT INTO `log` VALUES ('19646','494','testongoing','sedang ujian','2025-10-04 14:23:54');
INSERT INTO `log` VALUES ('19647','526','login','Selesai Ujian','2025-10-04 14:23:56');
INSERT INTO `log` VALUES ('19648','562','login','Selesai Ujian','2025-10-04 14:23:57');
INSERT INTO `log` VALUES ('19649','527','login','Selesai Ujian','2025-10-04 14:24:00');
INSERT INTO `log` VALUES ('19650','530','login','Selesai Ujian','2025-10-04 14:24:00');
INSERT INTO `log` VALUES ('19651','536','login','Selesai Ujian','2025-10-04 14:24:01');
INSERT INTO `log` VALUES ('19652','470','testongoing','sedang ujian','2025-10-04 14:24:04');
INSERT INTO `log` VALUES ('19653','562','testongoing','sedang ujian','2025-10-04 14:24:05');
INSERT INTO `log` VALUES ('19654','544','login','Selesai Ujian','2025-10-04 14:24:05');
INSERT INTO `log` VALUES ('19655','530','testongoing','sedang ujian','2025-10-04 14:24:07');
INSERT INTO `log` VALUES ('19656','527','testongoing','sedang ujian','2025-10-04 14:24:09');
INSERT INTO `log` VALUES ('19657','536','testongoing','sedang ujian','2025-10-04 14:24:09');
INSERT INTO `log` VALUES ('19658','544','testongoing','sedang ujian','2025-10-04 14:24:16');
INSERT INTO `log` VALUES ('19659','526','testongoing','sedang ujian','2025-10-04 14:24:16');
INSERT INTO `log` VALUES ('19660','503','login','Selesai Ujian','2025-10-04 14:24:30');
INSERT INTO `log` VALUES ('19661','483','login','Selesai Ujian','2025-10-04 14:24:34');
INSERT INTO `log` VALUES ('19662','483','testongoing','sedang ujian','2025-10-04 14:24:41');
INSERT INTO `log` VALUES ('19663','474','login','Selesai Ujian','2025-10-04 14:24:40');
INSERT INTO `log` VALUES ('19664','491','login','Selesai Ujian','2025-10-04 14:24:41');
INSERT INTO `log` VALUES ('19665','474','testongoing','sedang ujian','2025-10-04 14:24:48');
INSERT INTO `log` VALUES ('19666','528','login','Selesai Ujian','2025-10-04 14:24:48');
INSERT INTO `log` VALUES ('19667','533','login','Selesai Ujian','2025-10-04 14:24:50');
INSERT INTO `log` VALUES ('19668','490','login','Selesai Ujian','2025-10-04 14:24:50');
INSERT INTO `log` VALUES ('19669','491','testongoing','sedang ujian','2025-10-04 14:24:55');
INSERT INTO `log` VALUES ('19670','455','login','Selesai Ujian','2025-10-04 14:24:54');
INSERT INTO `log` VALUES ('19671','533','testongoing','sedang ujian','2025-10-04 14:24:56');
INSERT INTO `log` VALUES ('19672','460','login','Selesai Ujian','2025-10-04 14:24:56');
INSERT INTO `log` VALUES ('19673','490','testongoing','sedang ujian','2025-10-04 14:24:59');
INSERT INTO `log` VALUES ('19674','450','login','Selesai Ujian','2025-10-04 14:24:59');
INSERT INTO `log` VALUES ('19675','455','testongoing','sedang ujian','2025-10-04 14:24:59');
INSERT INTO `log` VALUES ('19676','458','login','Selesai Ujian','2025-10-04 14:25:02');
INSERT INTO `log` VALUES ('19677','528','testongoing','sedang ujian','2025-10-04 14:25:03');
INSERT INTO `log` VALUES ('19678','460','testongoing','sedang ujian','2025-10-04 14:25:04');
INSERT INTO `log` VALUES ('19679','450','testongoing','sedang ujian','2025-10-04 14:25:06');
INSERT INTO `log` VALUES ('19680','525','login','Selesai Ujian','2025-10-04 14:25:06');
INSERT INTO `log` VALUES ('19681','503','testongoing','sedang ujian','2025-10-04 14:25:07');
INSERT INTO `log` VALUES ('19682','552','login','Selesai Ujian','2025-10-04 14:25:07');
INSERT INTO `log` VALUES ('19683','551','login','Selesai Ujian','2025-10-04 14:25:07');
INSERT INTO `log` VALUES ('19684','458','testongoing','sedang ujian','2025-10-04 14:25:10');
INSERT INTO `log` VALUES ('19685','552','testongoing','sedang ujian','2025-10-04 14:25:13');
INSERT INTO `log` VALUES ('19686','551','testongoing','sedang ujian','2025-10-04 14:25:13');
INSERT INTO `log` VALUES ('19687','525','testongoing','sedang ujian','2025-10-04 14:25:14');
INSERT INTO `log` VALUES ('19688','456','login','Selesai Ujian','2025-10-04 14:25:15');
INSERT INTO `log` VALUES ('19689','531','login','Selesai Ujian','2025-10-04 14:25:21');
INSERT INTO `log` VALUES ('19690','456','testongoing','sedang ujian','2025-10-04 14:25:22');
INSERT INTO `log` VALUES ('19691','448','login','Selesai Ujian','2025-10-04 14:25:24');
INSERT INTO `log` VALUES ('19692','531','testongoing','sedang ujian','2025-10-04 14:25:27');
INSERT INTO `log` VALUES ('19693','448','logout','keluar','2025-10-04 14:25:29');
INSERT INTO `log` VALUES ('19694','521','login','Selesai Ujian','2025-10-04 14:25:29');
INSERT INTO `log` VALUES ('19695','556','login','Selesai Ujian','2025-10-04 14:25:30');
INSERT INTO `log` VALUES ('19696','537','login','Selesai Ujian','2025-10-04 14:25:34');
INSERT INTO `log` VALUES ('19697','521','testongoing','sedang ujian','2025-10-04 14:25:36');
INSERT INTO `log` VALUES ('19698','537','testongoing','sedang ujian','2025-10-04 14:25:40');
INSERT INTO `log` VALUES ('19699','556','testongoing','sedang ujian','2025-10-04 14:25:46');
INSERT INTO `log` VALUES ('19700','564','login','Selesai Ujian','2025-10-04 14:25:48');
INSERT INTO `log` VALUES ('19701','448','login','masuk','2025-10-04 14:25:53');
INSERT INTO `log` VALUES ('19702','448','login','masuk','2025-10-04 14:25:53');
INSERT INTO `log` VALUES ('19703','448','testongoing','sedang ujian','2025-10-04 14:26:06');
INSERT INTO `log` VALUES ('19704','475','login','Selesai Ujian','2025-10-04 14:26:18');
INSERT INTO `log` VALUES ('19705','543','login','Selesai Ujian','2025-10-04 14:26:20');
INSERT INTO `log` VALUES ('19706','543','testongoing','sedang ujian','2025-10-04 14:26:38');
INSERT INTO `log` VALUES ('19707','534','login','Selesai Ujian','2025-10-04 14:26:41');
INSERT INTO `log` VALUES ('19708','475','testongoing','sedang ujian','2025-10-04 14:26:44');
INSERT INTO `log` VALUES ('19709','534','testongoing','sedang ujian','2025-10-04 14:26:57');
INSERT INTO `log` VALUES ('19710','535','login','Selesai Ujian','2025-10-04 14:27:12');
INSERT INTO `log` VALUES ('19711','493','login','masuk','2025-10-04 14:27:17');
INSERT INTO `log` VALUES ('19712','535','testongoing','sedang ujian','2025-10-04 14:27:17');
INSERT INTO `log` VALUES ('19713','514','login','Selesai Ujian','2025-10-04 14:27:17');
INSERT INTO `log` VALUES ('19714','437','login','Selesai Ujian','2025-10-04 14:27:17');
INSERT INTO `log` VALUES ('19715','507','login','Selesai Ujian','2025-10-04 14:27:19');
INSERT INTO `log` VALUES ('19716','451','login','Selesai Ujian','2025-10-04 14:27:20');
INSERT INTO `log` VALUES ('19717','529','login','Selesai Ujian','2025-10-04 14:27:20');
INSERT INTO `log` VALUES ('19718','451','testongoing','sedang ujian','2025-10-04 14:27:27');
INSERT INTO `log` VALUES ('19719','437','testongoing','sedang ujian','2025-10-04 14:27:28');
INSERT INTO `log` VALUES ('19720','507','testongoing','sedang ujian','2025-10-04 14:27:28');
INSERT INTO `log` VALUES ('19721','514','testongoing','sedang ujian','2025-10-04 14:27:28');
INSERT INTO `log` VALUES ('19722','529','testongoing','sedang ujian','2025-10-04 14:27:38');
INSERT INTO `log` VALUES ('19723','452','login','Selesai Ujian','2025-10-04 14:27:40');
INSERT INTO `log` VALUES ('19724','487','login','Selesai Ujian','2025-10-04 14:27:42');
INSERT INTO `log` VALUES ('19725','560','login','Selesai Ujian','2025-10-04 14:27:43');
INSERT INTO `log` VALUES ('19726','487','testongoing','sedang ujian','2025-10-04 14:27:47');
INSERT INTO `log` VALUES ('19727','448','login','masuk','2025-10-04 14:27:50');
INSERT INTO `log` VALUES ('19728','482','login','Selesai Ujian','2025-10-04 14:27:50');
INSERT INTO `log` VALUES ('19729','548','login','Selesai Ujian','2025-10-04 14:27:50');
INSERT INTO `log` VALUES ('19730','452','testongoing','sedang ujian','2025-10-04 14:27:55');
INSERT INTO `log` VALUES ('19731','520','login','Selesai Ujian','2025-10-04 14:27:56');
INSERT INTO `log` VALUES ('19732','548','testongoing','sedang ujian','2025-10-04 14:27:58');
INSERT INTO `log` VALUES ('19733','448','logout','keluar','2025-10-04 14:28:00');
INSERT INTO `log` VALUES ('19734','520','testongoing','sedang ujian','2025-10-04 14:28:03');
INSERT INTO `log` VALUES ('19735','473','login','Selesai Ujian','2025-10-04 14:28:03');
INSERT INTO `log` VALUES ('19736','473','testongoing','sedang ujian','2025-10-04 14:28:11');
INSERT INTO `log` VALUES ('19737','482','testongoing','sedang ujian','2025-10-04 14:28:12');
INSERT INTO `log` VALUES ('19738','446','login','Selesai Ujian','2025-10-04 14:28:16');
INSERT INTO `log` VALUES ('19739','446','testongoing','sedang ujian','2025-10-04 14:28:23');
INSERT INTO `log` VALUES ('19740','479','login','Selesai Ujian','2025-10-04 14:28:43');
INSERT INTO `log` VALUES ('19741','472','login','Selesai Ujian','2025-10-04 14:28:44');
INSERT INTO `log` VALUES ('19742','566','login','Selesai Ujian','2025-10-04 14:28:45');
INSERT INTO `log` VALUES ('19743','479','testongoing','sedang ujian','2025-10-04 14:28:50');
INSERT INTO `log` VALUES ('19744','472','testongoing','sedang ujian','2025-10-04 14:28:55');
INSERT INTO `log` VALUES ('19745','549','login','Selesai Ujian','2025-10-04 14:28:57');
INSERT INTO `log` VALUES ('19746','444','login','Selesai Ujian','2025-10-04 14:29:02');
INSERT INTO `log` VALUES ('19747','566','testongoing','sedang ujian','2025-10-04 14:29:05');
INSERT INTO `log` VALUES ('19748','564','testongoing','sedang ujian','2025-10-04 14:29:07');
INSERT INTO `log` VALUES ('19749','549','testongoing','sedang ujian','2025-10-04 14:29:08');
INSERT INTO `log` VALUES ('19750','444','testongoing','sedang ujian','2025-10-04 14:29:08');
INSERT INTO `log` VALUES ('19751','485','login','Selesai Ujian','2025-10-04 14:29:14');
INSERT INTO `log` VALUES ('19752','428','login','Selesai Ujian','2025-10-04 14:29:14');
INSERT INTO `log` VALUES ('19753','485','testongoing','sedang ujian','2025-10-04 14:29:21');
INSERT INTO `log` VALUES ('19754','559','login','Selesai Ujian','2025-10-04 14:29:21');
INSERT INTO `log` VALUES ('19755','428','testongoing','sedang ujian','2025-10-04 14:29:21');
INSERT INTO `log` VALUES ('19756','558','login','Selesai Ujian','2025-10-04 14:29:29');
INSERT INTO `log` VALUES ('19757','558','testongoing','sedang ujian','2025-10-04 14:29:47');
INSERT INTO `log` VALUES ('19758','560','testongoing','sedang ujian','2025-10-04 14:29:47');
INSERT INTO `log` VALUES ('19759','559','testongoing','sedang ujian','2025-10-04 14:30:13');
INSERT INTO `log` VALUES ('19760','477','login','Selesai Ujian','2025-10-04 14:30:37');
INSERT INTO `log` VALUES ('19761','477','testongoing','sedang ujian','2025-10-04 14:30:52');
INSERT INTO `log` VALUES ('19762','471','login','Selesai Ujian','2025-10-04 14:30:52');
INSERT INTO `log` VALUES ('19763','509','login','Selesai Ujian','2025-10-04 14:30:54');
INSERT INTO `log` VALUES ('19764','509','testongoing','sedang ujian','2025-10-04 14:31:00');
INSERT INTO `log` VALUES ('19765','508','login','Selesai Ujian','2025-10-04 14:31:00');
INSERT INTO `log` VALUES ('19766','461','login','Selesai Ujian','2025-10-04 14:31:00');
INSERT INTO `log` VALUES ('19767','471','testongoing','sedang ujian','2025-10-04 14:31:03');
INSERT INTO `log` VALUES ('19768','522','login','Selesai Ujian','2025-10-04 14:31:08');
INSERT INTO `log` VALUES ('19769','461','testongoing','sedang ujian','2025-10-04 14:31:09');
INSERT INTO `log` VALUES ('19770','569','login','Selesai Ujian','2025-10-04 14:31:19');
INSERT INTO `log` VALUES ('19771','508','testongoing','sedang ujian','2025-10-04 14:31:23');
INSERT INTO `log` VALUES ('19772','569','testongoing','sedang ujian','2025-10-04 14:31:25');
INSERT INTO `log` VALUES ('19773','550','login','Selesai Ujian','2025-10-04 14:31:41');
INSERT INTO `log` VALUES ('19774','442','login','Selesai Ujian','2025-10-04 14:31:44');
INSERT INTO `log` VALUES ('19775','462','login','Selesai Ujian','2025-10-04 14:31:56');
INSERT INTO `log` VALUES ('19776','426','login','Selesai Ujian','2025-10-04 14:31:58');
INSERT INTO `log` VALUES ('19777','550','testongoing','sedang ujian','2025-10-04 14:32:00');
INSERT INTO `log` VALUES ('19778','462','testongoing','sedang ujian','2025-10-04 14:32:01');
INSERT INTO `log` VALUES ('19779','426','testongoing','sedang ujian','2025-10-04 14:32:05');
INSERT INTO `log` VALUES ('19780','449','login','Selesai Ujian','2025-10-04 14:32:05');
INSERT INTO `log` VALUES ('19781','449','testongoing','sedang ujian','2025-10-04 14:32:14');
INSERT INTO `log` VALUES ('19782','464','login','Selesai Ujian','2025-10-04 14:32:27');
INSERT INTO `log` VALUES ('19783','442','testongoing','sedang ujian','2025-10-04 14:32:29');
INSERT INTO `log` VALUES ('19784','541','login','masuk','2025-10-04 14:32:31');
INSERT INTO `log` VALUES ('19785','464','testongoing','sedang ujian','2025-10-04 14:32:36');
INSERT INTO `log` VALUES ('19786','541','testongoing','sedang ujian','2025-10-04 14:32:38');
INSERT INTO `log` VALUES ('19787','480','login','Selesai Ujian','2025-10-04 14:32:38');
INSERT INTO `log` VALUES ('19788','557','login','Selesai Ujian','2025-10-04 14:32:42');
INSERT INTO `log` VALUES ('19789','480','testongoing','sedang ujian','2025-10-04 14:32:44');
INSERT INTO `log` VALUES ('19790','496','login','Selesai Ujian','2025-10-04 14:32:49');
INSERT INTO `log` VALUES ('19791','557','testongoing','sedang ujian','2025-10-04 14:33:00');
INSERT INTO `log` VALUES ('19792','542','login','Selesai Ujian','2025-10-04 14:33:02');
INSERT INTO `log` VALUES ('19793','522','testongoing','sedang ujian','2025-10-04 14:33:05');
INSERT INTO `log` VALUES ('19794','496','testongoing','sedang ujian','2025-10-04 14:33:12');
INSERT INTO `log` VALUES ('19795','493','login','Selesai Ujian','2025-10-04 14:33:14');
INSERT INTO `log` VALUES ('19796','542','testongoing','sedang ujian','2025-10-04 14:33:16');
INSERT INTO `log` VALUES ('19797','493','testongoing','sedang ujian','2025-10-04 14:33:20');
INSERT INTO `log` VALUES ('19798','524','login','Selesai Ujian','2025-10-04 14:33:25');
INSERT INTO `log` VALUES ('19799','445','login','Selesai Ujian','2025-10-04 14:33:29');
INSERT INTO `log` VALUES ('19800','524','testongoing','sedang ujian','2025-10-04 14:33:39');
INSERT INTO `log` VALUES ('19801','445','testongoing','sedang ujian','2025-10-04 14:33:42');
INSERT INTO `log` VALUES ('19802','454','login','Selesai Ujian','2025-10-04 14:33:53');
INSERT INTO `log` VALUES ('19803','523','login','Selesai Ujian','2025-10-04 14:33:56');
INSERT INTO `log` VALUES ('19804','454','testongoing','sedang ujian','2025-10-04 14:33:58');
INSERT INTO `log` VALUES ('19805','523','testongoing','sedang ujian','2025-10-04 14:34:06');
INSERT INTO `log` VALUES ('19806','512','login','Selesai Ujian','2025-10-04 14:34:13');
INSERT INTO `log` VALUES ('19807','512','testongoing','sedang ujian','2025-10-04 14:34:20');
INSERT INTO `log` VALUES ('19808','495','login','Selesai Ujian','2025-10-04 14:34:21');
INSERT INTO `log` VALUES ('19809','495','testongoing','sedang ujian','2025-10-04 14:34:34');
INSERT INTO `log` VALUES ('19810','501','login','Selesai Ujian','2025-10-04 14:34:33');
INSERT INTO `log` VALUES ('19811','501','testongoing','sedang ujian','2025-10-04 14:34:38');
INSERT INTO `log` VALUES ('19812','497','login','Selesai Ujian','2025-10-04 14:34:58');
INSERT INTO `log` VALUES ('19813','497','testongoing','sedang ujian','2025-10-04 14:35:06');
INSERT INTO `log` VALUES ('19814','499','login','Selesai Ujian','2025-10-04 14:35:11');
INSERT INTO `log` VALUES ('19815','516','login','Selesai Ujian','2025-10-04 14:35:34');
INSERT INTO `log` VALUES ('19816','499','testongoing','sedang ujian','2025-10-04 14:35:35');
INSERT INTO `log` VALUES ('19817','567','login','Selesai Ujian','2025-10-04 14:35:42');
INSERT INTO `log` VALUES ('19818','516','testongoing','sedang ujian','2025-10-04 14:35:46');
INSERT INTO `log` VALUES ('19819','465','login','Selesai Ujian','2025-10-04 14:35:48');
INSERT INTO `log` VALUES ('19820','510','login','Selesai Ujian','2025-10-04 14:35:49');
INSERT INTO `log` VALUES ('19821','457','login','Selesai Ujian','2025-10-04 14:35:51');
INSERT INTO `log` VALUES ('19822','567','testongoing','sedang ujian','2025-10-04 14:35:54');
INSERT INTO `log` VALUES ('19823','502','login','Selesai Ujian','2025-10-04 14:35:56');
INSERT INTO `log` VALUES ('19824','476','login','Selesai Ujian','2025-10-04 14:35:56');
INSERT INTO `log` VALUES ('19825','510','testongoing','sedang ujian','2025-10-04 14:35:58');
INSERT INTO `log` VALUES ('19826','498','login','Selesai Ujian','2025-10-04 14:35:56');
INSERT INTO `log` VALUES ('19827','465','testongoing','sedang ujian','2025-10-04 14:36:01');
INSERT INTO `log` VALUES ('19828','504','login','Selesai Ujian','2025-10-04 14:36:01');
INSERT INTO `log` VALUES ('19829','502','testongoing','sedang ujian','2025-10-04 14:36:02');
INSERT INTO `log` VALUES ('19830','457','testongoing','sedang ujian','2025-10-04 14:36:06');
INSERT INTO `log` VALUES ('19831','504','testongoing','sedang ujian','2025-10-04 14:36:09');
INSERT INTO `log` VALUES ('19832','505','login','Selesai Ujian','2025-10-04 14:36:13');
INSERT INTO `log` VALUES ('19833','498','testongoing','sedang ujian','2025-10-04 14:36:14');
INSERT INTO `log` VALUES ('19834','432','login','Selesai Ujian','2025-10-04 14:36:17');
INSERT INTO `log` VALUES ('19835','561','login','Selesai Ujian','2025-10-04 14:36:18');
INSERT INTO `log` VALUES ('19836','554','login','Selesai Ujian','2025-10-04 14:36:19');
INSERT INTO `log` VALUES ('19837','505','testongoing','sedang ujian','2025-10-04 14:36:20');
INSERT INTO `log` VALUES ('19838','432','testongoing','sedang ujian','2025-10-04 14:36:26');
INSERT INTO `log` VALUES ('19839','565','login','Selesai Ujian','2025-10-04 14:36:27');
INSERT INTO `log` VALUES ('19840','430','login','Selesai Ujian','2025-10-04 14:36:28');
INSERT INTO `log` VALUES ('19841','561','testongoing','sedang ujian','2025-10-04 14:36:34');
INSERT INTO `log` VALUES ('19842','430','testongoing','sedang ujian','2025-10-04 14:36:35');
INSERT INTO `log` VALUES ('19843','554','testongoing','sedang ujian','2025-10-04 14:36:45');
INSERT INTO `log` VALUES ('19844','433','login','Selesai Ujian','2025-10-04 14:36:48');
INSERT INTO `log` VALUES ('19845','492','login','Selesai Ujian','2025-10-04 14:36:53');
INSERT INTO `log` VALUES ('19846','565','testongoing','sedang ujian','2025-10-04 14:36:54');
INSERT INTO `log` VALUES ('19847','553','login','Selesai Ujian','2025-10-04 14:36:58');
INSERT INTO `log` VALUES ('19848','492','testongoing','sedang ujian','2025-10-04 14:36:59');
INSERT INTO `log` VALUES ('19849','476','testongoing','sedang ujian','2025-10-04 14:37:07');
INSERT INTO `log` VALUES ('19850','553','testongoing','sedang ujian','2025-10-04 14:37:09');
INSERT INTO `log` VALUES ('19851','466','login','Selesai Ujian','2025-10-04 14:37:44');
INSERT INTO `log` VALUES ('19852','555','login','Selesai Ujian','2025-10-04 14:37:56');
INSERT INTO `log` VALUES ('19853','555','testongoing','sedang ujian','2025-10-04 14:38:05');
INSERT INTO `log` VALUES ('19854','425','login','Selesai Ujian','2025-10-04 14:38:05');
INSERT INTO `log` VALUES ('19855','466','testongoing','sedang ujian','2025-10-04 14:38:06');
INSERT INTO `log` VALUES ('19856','547','login','Selesai Ujian','2025-10-04 14:38:09');
INSERT INTO `log` VALUES ('19857','519','login','Selesai Ujian','2025-10-04 14:38:15');
INSERT INTO `log` VALUES ('19858','425','testongoing','sedang ujian','2025-10-04 14:38:17');
INSERT INTO `log` VALUES ('19859','547','testongoing','sedang ujian','2025-10-04 14:38:18');
INSERT INTO `log` VALUES ('19860','519','testongoing','sedang ujian','2025-10-04 14:38:31');
INSERT INTO `log` VALUES ('19861','434','login','Selesai Ujian','2025-10-04 14:38:31');
INSERT INTO `log` VALUES ('19862','434','testongoing','sedang ujian','2025-10-04 14:38:41');
INSERT INTO `log` VALUES ('19863','433','testongoing','sedang ujian','2025-10-04 14:38:41');
INSERT INTO `log` VALUES ('19864','545','login','Selesai Ujian','2025-10-04 14:38:42');
INSERT INTO `log` VALUES ('19865','545','testongoing','sedang ujian','2025-10-04 14:38:53');
INSERT INTO `log` VALUES ('19866','494','login','Selesai Ujian','2025-10-04 14:39:00');
INSERT INTO `log` VALUES ('19867','494','testongoing','sedang ujian','2025-10-04 14:39:06');
INSERT INTO `log` VALUES ('19868','539','login','Selesai Ujian','2025-10-04 14:39:07');
INSERT INTO `log` VALUES ('19869','431','login','Selesai Ujian','2025-10-04 14:39:09');
INSERT INTO `log` VALUES ('19870','467','login','Selesai Ujian','2025-10-04 14:39:09');
INSERT INTO `log` VALUES ('19871','431','testongoing','sedang ujian','2025-10-04 14:39:17');
INSERT INTO `log` VALUES ('19872','467','testongoing','sedang ujian','2025-10-04 14:39:17');
INSERT INTO `log` VALUES ('19873','539','testongoing','sedang ujian','2025-10-04 14:39:27');
INSERT INTO `log` VALUES ('19874','527','login','Selesai Ujian','2025-10-04 14:39:28');
INSERT INTO `log` VALUES ('19875','527','testongoing','sedang ujian','2025-10-04 14:39:39');
INSERT INTO `log` VALUES ('19876','544','login','Selesai Ujian','2025-10-04 14:39:52');
INSERT INTO `log` VALUES ('19877','544','testongoing','sedang ujian','2025-10-04 14:40:02');
INSERT INTO `log` VALUES ('19878','440','login','Selesai Ujian','2025-10-04 14:40:20');
INSERT INTO `log` VALUES ('19879','440','testongoing','sedang ujian','2025-10-04 14:40:27');
INSERT INTO `log` VALUES ('19880','528','login','Selesai Ujian','2025-10-04 14:40:36');
INSERT INTO `log` VALUES ('19881','528','testongoing','sedang ujian','2025-10-04 14:40:44');
INSERT INTO `log` VALUES ('19882','463','login','Selesai Ujian','2025-10-04 14:40:47');
INSERT INTO `log` VALUES ('19883','453','login','Selesai Ujian','2025-10-04 14:40:47');
INSERT INTO `log` VALUES ('19884','491','login','Selesai Ujian','2025-10-04 14:40:50');
INSERT INTO `log` VALUES ('19885','453','testongoing','sedang ujian','2025-10-04 14:40:55');
INSERT INTO `log` VALUES ('19886','463','testongoing','sedang ujian','2025-10-04 14:40:57');
INSERT INTO `log` VALUES ('19887','491','testongoing','sedang ujian','2025-10-04 14:41:00');
INSERT INTO `log` VALUES ('19888','503','login','Selesai Ujian','2025-10-04 14:41:08');
INSERT INTO `log` VALUES ('19889','515','login','Selesai Ujian','2025-10-04 14:41:08');
INSERT INTO `log` VALUES ('19890','513','login','Selesai Ujian','2025-10-04 14:41:09');
INSERT INTO `log` VALUES ('19891','490','login','Selesai Ujian','2025-10-04 14:41:11');
INSERT INTO `log` VALUES ('19892','481','login','Selesai Ujian','2025-10-04 14:41:12');
INSERT INTO `log` VALUES ('19893','503','testongoing','sedang ujian','2025-10-04 14:41:14');
INSERT INTO `log` VALUES ('19894','511','login','Selesai Ujian','2025-10-04 14:41:12');
INSERT INTO `log` VALUES ('19895','490','testongoing','sedang ujian','2025-10-04 14:41:16');
INSERT INTO `log` VALUES ('19896','478','login','Selesai Ujian','2025-10-04 14:41:15');
INSERT INTO `log` VALUES ('19897','513','testongoing','sedang ujian','2025-10-04 14:41:16');
INSERT INTO `log` VALUES ('19898','530','login','Selesai Ujian','2025-10-04 14:41:15');
INSERT INTO `log` VALUES ('19899','481','testongoing','sedang ujian','2025-10-04 14:41:17');
INSERT INTO `log` VALUES ('19900','515','testongoing','sedang ujian','2025-10-04 14:41:18');
INSERT INTO `log` VALUES ('19901','511','testongoing','sedang ujian','2025-10-04 14:41:20');
INSERT INTO `log` VALUES ('19902','530','testongoing','sedang ujian','2025-10-04 14:41:21');
INSERT INTO `log` VALUES ('19903','478','testongoing','sedang ujian','2025-10-04 14:41:22');
INSERT INTO `log` VALUES ('19904','562','login','Selesai Ujian','2025-10-04 14:41:27');
INSERT INTO `log` VALUES ('19905','429','login','Selesai Ujian','2025-10-04 14:41:31');
INSERT INTO `log` VALUES ('19906','562','testongoing','sedang ujian','2025-10-04 14:41:34');
INSERT INTO `log` VALUES ('19907','546','login','Selesai Ujian','2025-10-04 14:41:39');
INSERT INTO `log` VALUES ('19908','429','testongoing','sedang ujian','2025-10-04 14:41:41');
INSERT INTO `log` VALUES ('19909','435','login','Selesai Ujian','2025-10-04 14:41:45');
INSERT INTO `log` VALUES ('19910','546','testongoing','sedang ujian','2025-10-04 14:41:50');
INSERT INTO `log` VALUES ('19911','551','login','Selesai Ujian','2025-10-04 14:41:51');
INSERT INTO `log` VALUES ('19912','518','login','Selesai Ujian','2025-10-04 14:41:55');
INSERT INTO `log` VALUES ('19913','551','testongoing','sedang ujian','2025-10-04 14:41:57');
INSERT INTO `log` VALUES ('19914','435','testongoing','sedang ujian','2025-10-04 14:41:58');
INSERT INTO `log` VALUES ('19915','518','testongoing','sedang ujian','2025-10-04 14:42:02');
INSERT INTO `log` VALUES ('19916','552','login','Selesai Ujian','2025-10-04 14:42:14');
INSERT INTO `log` VALUES ('19917','484','login','Selesai Ujian','2025-10-04 14:42:32');
INSERT INTO `log` VALUES ('19918','552','testongoing','sedang ujian','2025-10-04 14:42:41');
INSERT INTO `log` VALUES ('19919','484','testongoing','sedang ujian','2025-10-04 14:42:42');
INSERT INTO `log` VALUES ('19920','532','login','Selesai Ujian','2025-10-04 14:42:43');
INSERT INTO `log` VALUES ('19921','532','testongoing','sedang ujian','2025-10-04 14:42:48');
INSERT INTO `log` VALUES ('19922','451','login','Selesai Ujian','2025-10-04 14:42:48');
INSERT INTO `log` VALUES ('19923','451','testongoing','sedang ujian','2025-10-04 14:42:54');
INSERT INTO `log` VALUES ('19924','488','login','Selesai Ujian','2025-10-04 14:43:05');
INSERT INTO `log` VALUES ('19925','529','login','Selesai Ujian','2025-10-04 14:43:15');
INSERT INTO `log` VALUES ('19926','458','login','Selesai Ujian','2025-10-04 14:43:16');
INSERT INTO `log` VALUES ('19927','531','login','Selesai Ujian','2025-10-04 14:43:19');
INSERT INTO `log` VALUES ('19928','487','login','Selesai Ujian','2025-10-04 14:43:21');
INSERT INTO `log` VALUES ('19929','529','testongoing','sedang ujian','2025-10-04 14:43:25');
INSERT INTO `log` VALUES ('19930','488','testongoing','sedang ujian','2025-10-04 14:43:25');
INSERT INTO `log` VALUES ('19931','487','testongoing','sedang ujian','2025-10-04 14:43:26');
INSERT INTO `log` VALUES ('19932','531','testongoing','sedang ujian','2025-10-04 14:43:26');
INSERT INTO `log` VALUES ('19933','458','testongoing','sedang ujian','2025-10-04 14:43:29');
INSERT INTO `log` VALUES ('19934','543','login','Selesai Ujian','2025-10-04 14:43:35');
INSERT INTO `log` VALUES ('19935','439','login','Selesai Ujian','2025-10-04 14:43:39');
INSERT INTO `log` VALUES ('19936','439','testongoing','sedang ujian','2025-10-04 14:43:46');
INSERT INTO `log` VALUES ('19937','474','login','Selesai Ujian','2025-10-04 14:43:58');
INSERT INTO `log` VALUES ('19938','474','testongoing','sedang ujian','2025-10-04 14:44:06');
INSERT INTO `log` VALUES ('19939','543','testongoing','sedang ujian','2025-10-04 14:44:17');
INSERT INTO `log` VALUES ('19940','485','login','Selesai Ujian','2025-10-04 14:44:34');
INSERT INTO `log` VALUES ('19941','428','login','Selesai Ujian','2025-10-04 14:44:40');
INSERT INTO `log` VALUES ('19942','485','testongoing','sedang ujian','2025-10-04 14:44:42');
INSERT INTO `log` VALUES ('19943','534','login','Selesai Ujian','2025-10-04 14:44:47');
INSERT INTO `log` VALUES ('19944','428','testongoing','sedang ujian','2025-10-04 14:44:49');
INSERT INTO `log` VALUES ('19945','452','login','Selesai Ujian','2025-10-04 14:44:56');
INSERT INTO `log` VALUES ('19946','452','testongoing','sedang ujian','2025-10-04 14:45:09');
INSERT INTO `log` VALUES ('19947','533','login','Selesai Ujian','2025-10-04 14:45:09');
INSERT INTO `log` VALUES ('19948','533','testongoing','sedang ujian','2025-10-04 14:45:15');
INSERT INTO `log` VALUES ('19949','536','login','Selesai Ujian','2025-10-04 14:45:16');
INSERT INTO `log` VALUES ('19950','536','testongoing','sedang ujian','2025-10-04 14:45:22');
INSERT INTO `log` VALUES ('19951','534','testongoing','sedang ujian','2025-10-04 14:45:23');
INSERT INTO `log` VALUES ('19952','460','login','Selesai Ujian','2025-10-04 14:45:37');
INSERT INTO `log` VALUES ('19953','525','login','Selesai Ujian','2025-10-04 14:45:38');
INSERT INTO `log` VALUES ('19954','514','login','Selesai Ujian','2025-10-04 14:45:40');
INSERT INTO `log` VALUES ('19955','514','testongoing','sedang ujian','2025-10-04 14:45:47');
INSERT INTO `log` VALUES ('19956','525','testongoing','sedang ujian','2025-10-04 14:45:57');
INSERT INTO `log` VALUES ('19957','483','login','Selesai Ujian','2025-10-04 14:45:57');
INSERT INTO `log` VALUES ('19958','483','testongoing','sedang ujian','2025-10-04 14:46:04');
INSERT INTO `log` VALUES ('19959','460','testongoing','sedang ujian','2025-10-04 14:46:12');
INSERT INTO `log` VALUES ('19960','526','login','Selesai Ujian','2025-10-04 14:46:18');
INSERT INTO `log` VALUES ('19961','461','login','Selesai Ujian','2025-10-04 14:46:19');
INSERT INTO `log` VALUES ('19962','560','login','Selesai Ujian','2025-10-04 14:46:23');
INSERT INTO `log` VALUES ('19963','506','login','Selesai Ujian','2025-10-04 14:46:23');
INSERT INTO `log` VALUES ('19964','569','login','Selesai Ujian','2025-10-04 14:46:34');
INSERT INTO `log` VALUES ('19965','526','testongoing','sedang ujian','2025-10-04 14:46:37');
INSERT INTO `log` VALUES ('19966','506','testongoing','sedang ujian','2025-10-04 14:46:39');
INSERT INTO `log` VALUES ('19967','438','login','Selesai Ujian','2025-10-04 14:46:46');
INSERT INTO `log` VALUES ('19968','438','testongoing','sedang ujian','2025-10-04 14:46:58');
INSERT INTO `log` VALUES ('19969','569','testongoing','sedang ujian','2025-10-04 14:47:03');
INSERT INTO `log` VALUES ('19970','509','login','Selesai Ujian','2025-10-04 14:47:07');
INSERT INTO `log` VALUES ('19971','509','testongoing','sedang ujian','2025-10-04 14:47:13');
INSERT INTO `log` VALUES ('19972','468','login','Selesai Ujian','2025-10-04 14:47:18');
INSERT INTO `log` VALUES ('19973','469','login','Selesai Ujian','2025-10-04 14:47:18');
INSERT INTO `log` VALUES ('19974','468','testongoing','sedang ujian','2025-10-04 14:47:25');
INSERT INTO `log` VALUES ('19975','469','testongoing','sedang ujian','2025-10-04 14:47:26');
INSERT INTO `log` VALUES ('19976','426','login','Selesai Ujian','2025-10-04 14:47:30');
INSERT INTO `log` VALUES ('19977','450','login','Selesai Ujian','2025-10-04 14:47:30');
INSERT INTO `log` VALUES ('19978','566','login','Selesai Ujian','2025-10-04 14:47:31');
INSERT INTO `log` VALUES ('19979','426','logout','keluar','2025-10-04 14:47:35');
INSERT INTO `log` VALUES ('19980','560','testongoing','sedang ujian','2025-10-04 14:47:42');
INSERT INTO `log` VALUES ('19981','480','login','Selesai Ujian','2025-10-04 14:47:47');
INSERT INTO `log` VALUES ('19982','450','testongoing','sedang ujian','2025-10-04 14:47:51');
INSERT INTO `log` VALUES ('19983','462','login','Selesai Ujian','2025-10-04 14:47:53');
INSERT INTO `log` VALUES ('19984','480','logout','keluar','2025-10-04 14:47:59');
INSERT INTO `log` VALUES ('19985','521','login','Selesai Ujian','2025-10-04 14:48:09');
INSERT INTO `log` VALUES ('19986','521','testongoing','sedang ujian','2025-10-04 14:48:17');
INSERT INTO `log` VALUES ('19987','479','login','Selesai Ujian','2025-10-04 14:48:16');
INSERT INTO `log` VALUES ('19988','472','login','Selesai Ujian','2025-10-04 14:48:18');
INSERT INTO `log` VALUES ('19989','479','testongoing','sedang ujian','2025-10-04 14:48:23');
INSERT INTO `log` VALUES ('19990','472','testongoing','sedang ujian','2025-10-04 14:48:32');
INSERT INTO `log` VALUES ('19991','447','login','Selesai Ujian','2025-10-04 14:48:38');
INSERT INTO `log` VALUES ('19992','448','login','Selesai Ujian','2025-10-04 14:48:38');
INSERT INTO `log` VALUES ('19993','447','testongoing','sedang ujian','2025-10-04 14:48:44');
INSERT INTO `log` VALUES ('19994','448','testongoing','sedang ujian','2025-10-04 14:48:44');
INSERT INTO `log` VALUES ('19995','470','login','Selesai Ujian','2025-10-04 14:48:45');
INSERT INTO `log` VALUES ('19996','558','login','Selesai Ujian','2025-10-04 14:48:46');
INSERT INTO `log` VALUES ('19997','566','testongoing','sedang ujian','2025-10-04 14:48:48');
INSERT INTO `log` VALUES ('19998','470','testongoing','sedang ujian','2025-10-04 14:48:52');
INSERT INTO `log` VALUES ('19999','558','testongoing','sedang ujian','2025-10-04 14:48:57');
INSERT INTO `log` VALUES ('20000','520','login','Selesai Ujian','2025-10-04 14:49:03');
INSERT INTO `log` VALUES ('20001','520','testongoing','sedang ujian','2025-10-04 14:49:15');
INSERT INTO `log` VALUES ('20002','454','login','Selesai Ujian','2025-10-04 14:49:33');
INSERT INTO `log` VALUES ('20003','501','login','Selesai Ujian','2025-10-04 14:49:48');
INSERT INTO `log` VALUES ('20004','501','logout','keluar','2025-10-04 14:49:58');
INSERT INTO `log` VALUES ('20005','482','login','Selesai Ujian','2025-10-04 14:50:07');
INSERT INTO `log` VALUES ('20006','482','testongoing','sedang ujian','2025-10-04 14:50:13');
INSERT INTO `log` VALUES ('20007','564','login','Selesai Ujian','2025-10-04 14:50:24');
INSERT INTO `log` VALUES ('20008','437','login','Selesai Ujian','2025-10-04 14:50:39');
INSERT INTO `log` VALUES ('20009','564','testongoing','sedang ujian','2025-10-04 14:50:44');
INSERT INTO `log` VALUES ('20010','446','login','Selesai Ujian','2025-10-04 14:50:46');
INSERT INTO `log` VALUES ('20011','437','testongoing','sedang ujian','2025-10-04 14:50:47');
INSERT INTO `log` VALUES ('20012','444','login','Selesai Ujian','2025-10-04 14:50:46');
INSERT INTO `log` VALUES ('20013','550','login','Selesai Ujian','2025-10-04 14:50:49');
INSERT INTO `log` VALUES ('20014','444','testongoing','sedang ujian','2025-10-04 14:50:53');
INSERT INTO `log` VALUES ('20015','446','testongoing','sedang ujian','2025-10-04 14:50:53');
INSERT INTO `log` VALUES ('20016','516','login','Selesai Ujian','2025-10-04 14:50:56');
INSERT INTO `log` VALUES ('20017','550','testongoing','sedang ujian','2025-10-04 14:50:57');
INSERT INTO `log` VALUES ('20018','495','login','Selesai Ujian','2025-10-04 14:51:00');
INSERT INTO `log` VALUES ('20019','548','login','Selesai Ujian','2025-10-04 14:51:02');
INSERT INTO `log` VALUES ('20020','507','login','Selesai Ujian','2025-10-04 14:51:06');
INSERT INTO `log` VALUES ('20021','495','testongoing','sedang ujian','2025-10-04 14:51:07');
INSERT INTO `log` VALUES ('20022','548','testongoing','sedang ujian','2025-10-04 14:51:09');
INSERT INTO `log` VALUES ('20023','502','login','Selesai Ujian','2025-10-04 14:51:11');
INSERT INTO `log` VALUES ('20024','535','login','Selesai Ujian','2025-10-04 14:51:11');
INSERT INTO `log` VALUES ('20025','502','logout','keluar','2025-10-04 14:51:14');
INSERT INTO `log` VALUES ('20026','535','testongoing','sedang ujian','2025-10-04 14:51:19');
INSERT INTO `log` VALUES ('20027','556','login','Selesai Ujian','2025-10-04 14:51:29');
INSERT INTO `log` VALUES ('20028','537','login','Selesai Ujian','2025-10-04 14:51:30');
INSERT INTO `log` VALUES ('20029','516','logout','keluar','2025-10-04 14:51:31');
INSERT INTO `log` VALUES ('20030','504','login','Selesai Ujian','2025-10-04 14:51:31');
INSERT INTO `log` VALUES ('20031','507','testongoing','sedang ujian','2025-10-04 14:51:34');
INSERT INTO `log` VALUES ('20032','556','testongoing','sedang ujian','2025-10-04 14:51:37');
INSERT INTO `log` VALUES ('20033','537','testongoing','sedang ujian','2025-10-04 14:51:38');
INSERT INTO `log` VALUES ('20034','504','logout','keluar','2025-10-04 14:51:40');
INSERT INTO `log` VALUES ('20035','430','login','Selesai Ujian','2025-10-04 14:51:44');
INSERT INTO `log` VALUES ('20036','430','logout','keluar','2025-10-04 14:51:52');
INSERT INTO `log` VALUES ('20037','498','login','Selesai Ujian','2025-10-04 14:51:58');
INSERT INTO `log` VALUES ('20038','498','logout','keluar','2025-10-04 14:52:03');
INSERT INTO `log` VALUES ('20039','492','login','Selesai Ujian','2025-10-04 14:52:07');
INSERT INTO `log` VALUES ('20040','553','login','Selesai Ujian','2025-10-04 14:52:24');
INSERT INTO `log` VALUES ('20041','432','login','Selesai Ujian','2025-10-04 14:52:27');
INSERT INTO `log` VALUES ('20042','542','login','Selesai Ujian','2025-10-04 14:52:28');
INSERT INTO `log` VALUES ('20043','493','login','Selesai Ujian','2025-10-04 14:52:30');
INSERT INTO `log` VALUES ('20044','549','login','Selesai Ujian','2025-10-04 14:52:30');
INSERT INTO `log` VALUES ('20045','553','testongoing','sedang ujian','2025-10-04 14:52:34');
INSERT INTO `log` VALUES ('20046','493','testongoing','sedang ujian','2025-10-04 14:52:36');
INSERT INTO `log` VALUES ('20047','542','testongoing','sedang ujian','2025-10-04 14:52:38');
INSERT INTO `log` VALUES ('20048','549','testongoing','sedang ujian','2025-10-04 14:52:44');
INSERT INTO `log` VALUES ('20049','449','login','Selesai Ujian','2025-10-04 14:52:53');
INSERT INTO `log` VALUES ('20050','508','login','Selesai Ujian','2025-10-04 14:52:55');
INSERT INTO `log` VALUES ('20051','449','testongoing','sedang ujian','2025-10-04 14:53:00');
INSERT INTO `log` VALUES ('20052','522','login','Selesai Ujian','2025-10-04 14:53:01');
INSERT INTO `log` VALUES ('20053','508','testongoing','sedang ujian','2025-10-04 14:53:15');
INSERT INTO `log` VALUES ('20054','510','login','Selesai Ujian','2025-10-04 14:53:23');
INSERT INTO `log` VALUES ('20055','425','login','Selesai Ujian','2025-10-04 14:53:27');
INSERT INTO `log` VALUES ('20056','510','testongoing','sedang ujian','2025-10-04 14:53:29');
INSERT INTO `log` VALUES ('20057','473','login','Selesai Ujian','2025-10-04 14:53:32');
INSERT INTO `log` VALUES ('20058','473','testongoing','sedang ujian','2025-10-04 14:53:39');
INSERT INTO `log` VALUES ('20059','455','login','Selesai Ujian','2025-10-04 14:53:41');
INSERT INTO `log` VALUES ('20060','455','testongoing','sedang ujian','2025-10-04 14:53:45');
INSERT INTO `log` VALUES ('20061','434','login','Selesai Ujian','2025-10-04 14:54:00');
INSERT INTO `log` VALUES ('20062','433','login','Selesai Ujian','2025-10-04 14:54:00');
INSERT INTO `log` VALUES ('20063','555','login','Selesai Ujian','2025-10-04 14:54:00');
INSERT INTO `log` VALUES ('20064','425','logout','keluar','2025-10-04 14:54:03');
INSERT INTO `log` VALUES ('20065','433','logout','keluar','2025-10-04 14:54:08');
INSERT INTO `log` VALUES ('20066','434','logout','keluar','2025-10-04 14:54:10');
INSERT INTO `log` VALUES ('20067','471','login','Selesai Ujian','2025-10-04 14:54:15');
INSERT INTO `log` VALUES ('20068','494','login','Selesai Ujian','2025-10-04 14:54:17');
INSERT INTO `log` VALUES ('20069','494','logout','keluar','2025-10-04 14:54:21');
INSERT INTO `log` VALUES ('20070','431','login','Selesai Ujian','2025-10-04 14:54:22');
INSERT INTO `log` VALUES ('20071','471','testongoing','sedang ujian','2025-10-04 14:54:24');
INSERT INTO `log` VALUES ('20072','431','logout','keluar','2025-10-04 14:54:32');
INSERT INTO `log` VALUES ('20073','456','login','Selesai Ujian','2025-10-04 14:54:34');
INSERT INTO `log` VALUES ('20074','539','login','Selesai Ujian','2025-10-04 14:54:37');
INSERT INTO `log` VALUES ('20075','456','testongoing','sedang ujian','2025-10-04 14:54:45');
INSERT INTO `log` VALUES ('20076','559','login','Selesai Ujian','2025-10-04 14:54:45');
INSERT INTO `log` VALUES ('20077','527','login','Selesai Ujian','2025-10-04 14:54:47');
INSERT INTO `log` VALUES ('20078','539','logout','keluar','2025-10-04 14:54:50');
INSERT INTO `log` VALUES ('20079','567','login','Selesai Ujian','2025-10-04 14:54:54');
INSERT INTO `log` VALUES ('20080','499','login','Selesai Ujian','2025-10-04 14:54:55');
INSERT INTO `log` VALUES ('20081','555','logout','keluar','2025-10-04 14:54:57');
INSERT INTO `log` VALUES ('20082','497','login','Selesai Ujian','2025-10-04 14:54:57');
INSERT INTO `log` VALUES ('20083','527','logout','keluar','2025-10-04 14:54:59');
INSERT INTO `log` VALUES ('20084','567','testongoing','sedang ujian','2025-10-04 14:55:00');
INSERT INTO `log` VALUES ('20085','499','testongoing','sedang ujian','2025-10-04 14:55:02');
INSERT INTO `log` VALUES ('20086','497','testongoing','sedang ujian','2025-10-04 14:55:04');
INSERT INTO `log` VALUES ('20087','559','testongoing','sedang ujian','2025-10-04 14:55:06');
INSERT INTO `log` VALUES ('20088','512','login','Selesai Ujian','2025-10-04 14:55:06');
INSERT INTO `log` VALUES ('20089','544','login','Selesai Ujian','2025-10-04 14:55:17');
INSERT INTO `log` VALUES ('20090','544','logout','keluar','2025-10-04 14:55:27');
INSERT INTO `log` VALUES ('20091','523','login','Selesai Ujian','2025-10-04 14:55:47');
INSERT INTO `log` VALUES ('20092','522','testongoing','sedang ujian','2025-10-04 14:55:49');
INSERT INTO `log` VALUES ('20093','477','login','Selesai Ujian','2025-10-04 14:55:51');
INSERT INTO `log` VALUES ('20094','523','testongoing','sedang ujian','2025-10-04 14:55:55');
INSERT INTO `log` VALUES ('20095','477','testongoing','sedang ujian','2025-10-04 14:55:56');
INSERT INTO `log` VALUES ('20096','496','login','Selesai Ujian','2025-10-04 14:55:59');
INSERT INTO `log` VALUES ('20097','528','login','Selesai Ujian','2025-10-04 14:56:02');
INSERT INTO `log` VALUES ('20098','528','logout','keluar','2025-10-04 14:56:08');
INSERT INTO `log` VALUES ('20099','453','login','Selesai Ujian','2025-10-04 14:56:10');
INSERT INTO `log` VALUES ('20100','453','logout','keluar','2025-10-04 14:56:16');
INSERT INTO `log` VALUES ('20101','442','login','Selesai Ujian','2025-10-04 14:56:21');
INSERT INTO `log` VALUES ('20102','496','testongoing','sedang ujian','2025-10-04 14:56:22');
INSERT INTO `log` VALUES ('20103','490','login','Selesai Ujian','2025-10-04 14:56:23');
INSERT INTO `log` VALUES ('20104','513','login','Selesai Ujian','2025-10-04 14:56:24');
INSERT INTO `log` VALUES ('20105','442','testongoing','sedang ujian','2025-10-04 14:56:28');
INSERT INTO `log` VALUES ('20106','530','login','Selesai Ujian','2025-10-04 14:56:28');
INSERT INTO `log` VALUES ('20107','481','login','Selesai Ujian','2025-10-04 14:56:29');
INSERT INTO `log` VALUES ('20108','513','logout','keluar','2025-10-04 14:56:31');
INSERT INTO `log` VALUES ('20109','467','login','Selesai Ujian','2025-10-04 14:56:31');
INSERT INTO `log` VALUES ('20110','491','login','Selesai Ujian','2025-10-04 14:56:32');
INSERT INTO `log` VALUES ('20111','490','logout','keluar','2025-10-04 14:56:33');
INSERT INTO `log` VALUES ('20112','445','login','Selesai Ujian','2025-10-04 14:56:33');
INSERT INTO `log` VALUES ('20113','565','login','Selesai Ujian','2025-10-04 14:56:33');
INSERT INTO `log` VALUES ('20114','557','login','Selesai Ujian','2025-10-04 14:56:33');
INSERT INTO `log` VALUES ('20115','467','logout','keluar','2025-10-04 14:56:36');
INSERT INTO `log` VALUES ('20116','481','logout','keluar','2025-10-04 14:56:37');
INSERT INTO `log` VALUES ('20117','491','logout','keluar','2025-10-04 14:56:37');
INSERT INTO `log` VALUES ('20118','445','testongoing','sedang ujian','2025-10-04 14:56:38');
INSERT INTO `log` VALUES ('20119','557','testongoing','sedang ujian','2025-10-04 14:56:40');
INSERT INTO `log` VALUES ('20120','565','testongoing','sedang ujian','2025-10-04 14:56:44');
INSERT INTO `log` VALUES ('20121','478','login','Selesai Ujian','2025-10-04 14:56:44');
INSERT INTO `log` VALUES ('20122','429','login','Selesai Ujian','2025-10-04 14:56:44');
INSERT INTO `log` VALUES ('20123','478','logout','keluar','2025-10-04 14:56:52');
INSERT INTO `log` VALUES ('20124','429','logout','keluar','2025-10-04 14:56:53');
INSERT INTO `log` VALUES ('20125','457','login','Selesai Ujian','2025-10-04 14:56:53');
INSERT INTO `log` VALUES ('20126','505','login','Selesai Ujian','2025-10-04 14:56:54');
INSERT INTO `log` VALUES ('20127','457','testongoing','sedang ujian','2025-10-04 14:56:58');
INSERT INTO `log` VALUES ('20128','562','login','Selesai Ujian','2025-10-04 14:57:10');
INSERT INTO `log` VALUES ('20129','551','login','Selesai Ujian','2025-10-04 14:57:16');
INSERT INTO `log` VALUES ('20130','541','login','Selesai Ujian','2025-10-04 14:57:18');
INSERT INTO `log` VALUES ('20131','503','login','Selesai Ujian','2025-10-04 14:57:22');
INSERT INTO `log` VALUES ('20132','503','logout','keluar','2025-10-04 14:57:29');
INSERT INTO `log` VALUES ('20133','541','testongoing','sedang ujian','2025-10-04 14:57:32');
INSERT INTO `log` VALUES ('20134','552','login','Selesai Ujian','2025-10-04 14:57:46');
INSERT INTO `log` VALUES ('20135','532','login','Selesai Ujian','2025-10-04 14:57:59');
INSERT INTO `log` VALUES ('20136','532','logout','keluar','2025-10-04 14:58:05');
INSERT INTO `log` VALUES ('20137','524','login','Selesai Ujian','2025-10-04 14:58:05');
INSERT INTO `log` VALUES ('20138','484','login','Selesai Ujian','2025-10-04 14:58:07');
INSERT INTO `log` VALUES ('20139','465','login','Selesai Ujian','2025-10-04 14:58:08');
INSERT INTO `log` VALUES ('20140','465','testongoing','sedang ujian','2025-10-04 14:58:12');
INSERT INTO `log` VALUES ('20141','484','logout','keluar','2025-10-04 14:58:12');
INSERT INTO `log` VALUES ('20142','435','login','Selesai Ujian','2025-10-04 14:58:14');
INSERT INTO `log` VALUES ('20143','524','testongoing','sedang ujian','2025-10-04 14:58:16');
INSERT INTO `log` VALUES ('20144','435','logout','keluar','2025-10-04 14:58:19');
INSERT INTO `log` VALUES ('20145','475','login','Selesai Ujian','2025-10-04 14:58:24');
INSERT INTO `log` VALUES ('20146','475','testongoing','sedang ujian','2025-10-04 14:58:30');
INSERT INTO `log` VALUES ('20147','517','login','Selesai Ujian','2025-10-04 14:58:30');
INSERT INTO `log` VALUES ('20148','531','login','Selesai Ujian','2025-10-04 14:58:30');
INSERT INTO `log` VALUES ('20149','518','login','Selesai Ujian','2025-10-04 14:58:31');
INSERT INTO `log` VALUES ('20150','529','login','Selesai Ujian','2025-10-04 14:58:35');
INSERT INTO `log` VALUES ('20151','531','logout','keluar','2025-10-04 14:58:36');
INSERT INTO `log` VALUES ('20152','517','testongoing','sedang ujian','2025-10-04 14:58:36');
INSERT INTO `log` VALUES ('20153','518','testongoing','sedang ujian','2025-10-04 14:58:37');
INSERT INTO `log` VALUES ('20154','487','login','Selesai Ujian','2025-10-04 14:58:38');
INSERT INTO `log` VALUES ('20155','529','logout','keluar','2025-10-04 14:58:42');
INSERT INTO `log` VALUES ('20156','487','logout','keluar','2025-10-04 14:58:43');
INSERT INTO `log` VALUES ('20157','451','login','Selesai Ujian','2025-10-04 14:58:44');
INSERT INTO `log` VALUES ('20158','458','login','Selesai Ujian','2025-10-04 14:58:46');
INSERT INTO `log` VALUES ('20159','451','logout','keluar','2025-10-04 14:58:48');
INSERT INTO `log` VALUES ('20160','440','login','Selesai Ujian','2025-10-04 14:58:57');
INSERT INTO `log` VALUES ('20161','440','logout','keluar','2025-10-04 14:59:00');
INSERT INTO `log` VALUES ('20162','458','logout','keluar','2025-10-04 14:59:03');
INSERT INTO `log` VALUES ('20163','519','login','Selesai Ujian','2025-10-04 14:59:38');
INSERT INTO `log` VALUES ('20164','519','testongoing','sedang ujian','2025-10-04 14:59:50');
INSERT INTO `log` VALUES ('20165','485','login','Selesai Ujian','2025-10-04 14:59:50');
INSERT INTO `log` VALUES ('20166','485','logout','keluar','2025-10-04 14:59:56');
INSERT INTO `log` VALUES ('20167','536','login','Selesai Ujian','2025-10-04 15:00:27');
INSERT INTO `log` VALUES ('20168','536','logout','keluar','2025-10-04 15:00:34');
INSERT INTO `log` VALUES ('20169','534','login','Selesai Ujian','2025-10-04 15:00:34');
INSERT INTO `log` VALUES ('20170','474','login','Selesai Ujian','2025-10-04 15:00:35');
INSERT INTO `log` VALUES ('20171','561','login','Selesai Ujian','2025-10-04 15:00:36');
INSERT INTO `log` VALUES ('20172','474','logout','keluar','2025-10-04 15:00:42');
INSERT INTO `log` VALUES ('20173','561','testongoing','sedang ujian','2025-10-04 15:00:44');
INSERT INTO `log` VALUES ('20174','533','login','Selesai Ujian','2025-10-04 15:00:49');
INSERT INTO `log` VALUES ('20175','534','logout','keluar','2025-10-04 15:00:52');
INSERT INTO `log` VALUES ('20176','533','logout','keluar','2025-10-04 15:00:57');
INSERT INTO `log` VALUES ('20177','554','login','Selesai Ujian','2025-10-04 15:00:58');
INSERT INTO `log` VALUES ('20178','554','testongoing','sedang ujian','2025-10-04 15:01:06');
INSERT INTO `log` VALUES ('20179','428','login','Selesai Ujian','2025-10-04 15:01:28');
INSERT INTO `log` VALUES ('20180','483','login','Selesai Ujian','2025-10-04 15:01:28');
INSERT INTO `log` VALUES ('20181','525','login','Selesai Ujian','2025-10-04 15:01:31');
INSERT INTO `log` VALUES ('20182','428','logout','keluar','2025-10-04 15:01:34');
INSERT INTO `log` VALUES ('20183','525','logout','keluar','2025-10-04 15:01:35');
INSERT INTO `log` VALUES ('20184','483','logout','keluar','2025-10-04 15:01:37');
INSERT INTO `log` VALUES ('20185','476','login','Selesai Ujian','2025-10-04 15:01:48');
INSERT INTO `log` VALUES ('20186','526','login','Selesai Ujian','2025-10-04 15:01:51');
INSERT INTO `log` VALUES ('20187','476','testongoing','sedang ujian','2025-10-04 15:01:54');
INSERT INTO `log` VALUES ('20188','526','logout','keluar','2025-10-04 15:01:56');
INSERT INTO `log` VALUES ('20189','506','login','Selesai Ujian','2025-10-04 15:02:02');
INSERT INTO `log` VALUES ('20190','462','logout','keluar','2025-10-04 15:02:14');
INSERT INTO `log` VALUES ('20191','569','login','Selesai Ujian','2025-10-04 15:02:17');
INSERT INTO `log` VALUES ('20192','569','logout','keluar','2025-10-04 15:02:20');
INSERT INTO `log` VALUES ('20193','461','logout','keluar','2025-10-04 15:02:21');
INSERT INTO `log` VALUES ('20194','509','login','Selesai Ujian','2025-10-04 15:02:22');
INSERT INTO `log` VALUES ('20195','452','login','Selesai Ujian','2025-10-04 15:02:35');
INSERT INTO `log` VALUES ('20196','469','login','Selesai Ujian','2025-10-04 15:02:38');
INSERT INTO `log` VALUES ('20197','469','logout','keluar','2025-10-04 15:02:42');
INSERT INTO `log` VALUES ('20198','463','login','Selesai Ujian','2025-10-04 15:02:50');
INSERT INTO `log` VALUES ('20199','468','login','Selesai Ujian','2025-10-04 15:02:54');
INSERT INTO `log` VALUES ('20200','543','login','Selesai Ujian','2025-10-04 15:02:55');
INSERT INTO `log` VALUES ('20201','463','testongoing','sedang ujian','2025-10-04 15:02:57');
INSERT INTO `log` VALUES ('20202','468','logout','keluar','2025-10-04 15:02:59');
INSERT INTO `log` VALUES ('20203','543','logout','keluar','2025-10-04 15:03:07');
INSERT INTO `log` VALUES ('20204','460','login','Selesai Ujian','2025-10-04 15:03:11');
INSERT INTO `log` VALUES ('20205','560','login','Selesai Ujian','2025-10-04 15:03:12');
INSERT INTO `log` VALUES ('20206','439','login','Selesai Ujian','2025-10-04 15:03:15');
INSERT INTO `log` VALUES ('20207','460','logout','keluar','2025-10-04 15:03:16');
INSERT INTO `log` VALUES ('20208','439','logout','keluar','2025-10-04 15:03:21');
INSERT INTO `log` VALUES ('20209','448','login','Selesai Ujian','2025-10-04 15:03:51');
INSERT INTO `log` VALUES ('20210','546','login','Selesai Ujian','2025-10-04 15:03:54');
INSERT INTO `log` VALUES ('20211','448','logout','keluar','2025-10-04 15:03:55');
INSERT INTO `log` VALUES ('20212','447','login','Selesai Ujian','2025-10-04 15:03:54');
INSERT INTO `log` VALUES ('20213','545','login','Selesai Ujian','2025-10-04 15:03:58');
INSERT INTO `log` VALUES ('20214','546','testongoing','sedang ujian','2025-10-04 15:04:00');
INSERT INTO `log` VALUES ('20215','545','testongoing','sedang ujian','2025-10-04 15:04:03');
INSERT INTO `log` VALUES ('20216','566','login','Selesai Ujian','2025-10-04 15:04:05');
INSERT INTO `log` VALUES ('20217','438','login','Selesai Ujian','2025-10-04 15:04:18');
INSERT INTO `log` VALUES ('20218','488','login','Selesai Ujian','2025-10-04 15:04:21');
INSERT INTO `log` VALUES ('20219','438','logout','keluar','2025-10-04 15:04:25');
INSERT INTO `log` VALUES ('20220','470','login','Selesai Ujian','2025-10-04 15:04:24');
INSERT INTO `log` VALUES ('20221','470','logout','keluar','2025-10-04 15:04:30');
INSERT INTO `log` VALUES ('20222','488','testongoing','sedang ujian','2025-10-04 15:04:36');
INSERT INTO `log` VALUES ('20223','472','login','Selesai Ujian','2025-10-04 15:04:36');
INSERT INTO `log` VALUES ('20224','479','login','Selesai Ujian','2025-10-04 15:05:01');
INSERT INTO `log` VALUES ('20225','479','logout','keluar','2025-10-04 15:05:05');
INSERT INTO `log` VALUES ('20226','482','login','Selesai Ujian','2025-10-04 15:05:39');
INSERT INTO `log` VALUES ('20227','464','login','Selesai Ujian','2025-10-04 15:05:40');
INSERT INTO `log` VALUES ('20228','521','login','Selesai Ujian','2025-10-04 15:05:43');
INSERT INTO `log` VALUES ('20229','464','testongoing','sedang ujian','2025-10-04 15:05:46');
INSERT INTO `log` VALUES ('20230','482','logout','keluar','2025-10-04 15:05:47');
INSERT INTO `log` VALUES ('20231','514','login','Selesai Ujian','2025-10-04 15:05:49');
INSERT INTO `log` VALUES ('20232','520','login','Selesai Ujian','2025-10-04 15:05:53');
INSERT INTO `log` VALUES ('20233','564','login','Selesai Ujian','2025-10-04 15:05:55');
INSERT INTO `log` VALUES ('20234','564','logout','keluar','2025-10-04 15:05:59');
INSERT INTO `log` VALUES ('20235','495','login','Selesai Ujian','2025-10-04 15:06:17');
INSERT INTO `log` VALUES ('20236','495','logout','keluar','2025-10-04 15:06:22');
INSERT INTO `log` VALUES ('20237','437','login','Selesai Ujian','2025-10-04 15:06:23');
INSERT INTO `log` VALUES ('20238','437','logout','keluar','2025-10-04 15:06:29');
INSERT INTO `log` VALUES ('20239','535','login','Selesai Ujian','2025-10-04 15:06:34');
INSERT INTO `log` VALUES ('20240','558','login','Selesai Ujian','2025-10-04 15:06:36');
INSERT INTO `log` VALUES ('20241','446','login','Selesai Ujian','2025-10-04 15:06:41');
INSERT INTO `log` VALUES ('20242','535','logout','keluar','2025-10-04 15:06:42');
INSERT INTO `log` VALUES ('20243','446','logout','keluar','2025-10-04 15:06:48');
INSERT INTO `log` VALUES ('20244','548','login','Selesai Ujian','2025-10-04 15:06:57');
INSERT INTO `log` VALUES ('20245','550','login','Selesai Ujian','2025-10-04 15:06:58');
INSERT INTO `log` VALUES ('20246','548','logout','keluar','2025-10-04 15:07:09');
INSERT INTO `log` VALUES ('20247','556','login','Selesai Ujian','2025-10-04 15:07:20');
INSERT INTO `log` VALUES ('20248','556','logout','keluar','2025-10-04 15:07:23');
INSERT INTO `log` VALUES ('20249','507','login','Selesai Ujian','2025-10-04 15:07:32');
INSERT INTO `log` VALUES ('20250','547','login','Selesai Ujian','2025-10-04 15:07:36');
INSERT INTO `log` VALUES ('20251','553','login','Selesai Ujian','2025-10-04 15:07:46');
INSERT INTO `log` VALUES ('20252','553','logout','keluar','2025-10-04 15:07:52');
INSERT INTO `log` VALUES ('20253','547','testongoing','sedang ujian','2025-10-04 15:07:58');
INSERT INTO `log` VALUES ('20254','511','login','Selesai Ujian','2025-10-04 15:08:08');
INSERT INTO `log` VALUES ('20255','549','login','Selesai Ujian','2025-10-04 15:08:12');
INSERT INTO `log` VALUES ('20256','493','login','Selesai Ujian','2025-10-04 15:08:16');
INSERT INTO `log` VALUES ('20257','466','login','Selesai Ujian','2025-10-04 15:08:19');
INSERT INTO `log` VALUES ('20258','511','testongoing','sedang ujian','2025-10-04 15:08:27');
INSERT INTO `log` VALUES ('20259','466','testongoing','sedang ujian','2025-10-04 15:08:30');
INSERT INTO `log` VALUES ('20260','493','logout','keluar','2025-10-04 15:08:32');
INSERT INTO `log` VALUES ('20261','515','login','Selesai Ujian','2025-10-04 15:08:47');
INSERT INTO `log` VALUES ('20262','537','login','Selesai Ujian','2025-10-04 15:08:54');
INSERT INTO `log` VALUES ('20263','515','testongoing','sedang ujian','2025-10-04 15:08:55');
INSERT INTO `log` VALUES ('20264','537','logout','keluar','2025-10-04 15:09:05');
INSERT INTO `log` VALUES ('20265','473','login','Selesai Ujian','2025-10-04 15:09:10');
INSERT INTO `log` VALUES ('20266','455','login','Selesai Ujian','2025-10-04 15:09:19');
INSERT INTO `log` VALUES ('20267','455','logout','keluar','2025-10-04 15:09:23');
INSERT INTO `log` VALUES ('20268','473','logout','keluar','2025-10-04 15:09:24');
INSERT INTO `log` VALUES ('20269','508','login','Selesai Ujian','2025-10-04 15:09:29');
INSERT INTO `log` VALUES ('20270','510','login','Selesai Ujian','2025-10-04 15:09:30');
INSERT INTO `log` VALUES ('20271','471','login','Selesai Ujian','2025-10-04 15:09:50');
INSERT INTO `log` VALUES ('20272','456','login','Selesai Ujian','2025-10-04 15:09:50');
INSERT INTO `log` VALUES ('20273','456','logout','keluar','2025-10-04 15:10:03');
INSERT INTO `log` VALUES ('20274','567','login','Selesai Ujian','2025-10-04 15:10:16');
INSERT INTO `log` VALUES ('20275','567','logout','keluar','2025-10-04 15:10:21');
INSERT INTO `log` VALUES ('20276','559','login','Selesai Ujian','2025-10-04 15:10:26');
INSERT INTO `log` VALUES ('20277','497','login','Selesai Ujian','2025-10-04 15:10:38');
INSERT INTO `log` VALUES ('20278','450','login','Selesai Ujian','2025-10-04 15:10:55');
INSERT INTO `log` VALUES ('20279','450','logout','keluar','2025-10-04 15:11:10');
INSERT INTO `log` VALUES ('20280','477','login','Selesai Ujian','2025-10-04 15:11:10');
INSERT INTO `log` VALUES ('20281','499','login','Selesai Ujian','2025-10-04 15:11:12');
INSERT INTO `log` VALUES ('20282','477','logout','keluar','2025-10-04 15:11:15');
INSERT INTO `log` VALUES ('20283','459','login','masuk','2025-10-04 15:11:21');
INSERT INTO `log` VALUES ('20284','459','testongoing','sedang ujian','2025-10-04 15:11:31');
INSERT INTO `log` VALUES ('20285','499','logout','keluar','2025-10-04 15:11:34');
INSERT INTO `log` VALUES ('20286','496','login','Selesai Ujian','2025-10-04 15:11:41');
INSERT INTO `log` VALUES ('20287','496','logout','keluar','2025-10-04 15:11:45');
INSERT INTO `log` VALUES ('20288','449','login','Selesai Ujian','2025-10-04 15:11:50');
INSERT INTO `log` VALUES ('20289','565','login','Selesai Ujian','2025-10-04 15:11:55');
INSERT INTO `log` VALUES ('20290','565','logout','keluar','2025-10-04 15:11:58');
INSERT INTO `log` VALUES ('20291','442','login','Selesai Ujian','2025-10-04 15:11:58');
INSERT INTO `log` VALUES ('20292','449','logout','keluar','2025-10-04 15:12:01');
INSERT INTO `log` VALUES ('20293','444','login','Selesai Ujian','2025-10-04 15:12:08');
INSERT INTO `log` VALUES ('20294','444','logout','keluar','2025-10-04 15:12:12');
INSERT INTO `log` VALUES ('20295','522','login','Selesai Ujian','2025-10-04 15:12:15');
INSERT INTO `log` VALUES ('20296','522','logout','keluar','2025-10-04 15:12:19');
INSERT INTO `log` VALUES ('20297','523','login','Selesai Ujian','2025-10-04 15:12:38');
INSERT INTO `log` VALUES ('20298','541','login','Selesai Ujian','2025-10-04 15:12:57');
INSERT INTO `log` VALUES ('20299','541','testongoing','sedang ujian','2025-10-04 15:13:03');
INSERT INTO `log` VALUES ('20300','445','login','Selesai Ujian','2025-10-04 15:13:17');
INSERT INTO `log` VALUES ('20301','445','logout','keluar','2025-10-04 15:13:20');
INSERT INTO `log` VALUES ('20302','457','login','Selesai Ujian','2025-10-04 15:13:54');
INSERT INTO `log` VALUES ('20303','457','logout','keluar','2025-10-04 15:14:00');
INSERT INTO `log` VALUES ('20304','465','login','Selesai Ujian','2025-10-04 15:14:06');
INSERT INTO `log` VALUES ('20305','517','login','Selesai Ujian','2025-10-04 15:14:09');
INSERT INTO `log` VALUES ('20306','465','logout','keluar','2025-10-04 15:14:10');
INSERT INTO `log` VALUES ('20307','517','logout','keluar','2025-10-04 15:14:19');
INSERT INTO `log` VALUES ('20308','475','login','Selesai Ujian','2025-10-04 15:14:50');
INSERT INTO `log` VALUES ('20309','542','login','Selesai Ujian','2025-10-04 15:15:07');
INSERT INTO `log` VALUES ('20310','561','login','Selesai Ujian','2025-10-04 15:15:54');
INSERT INTO `log` VALUES ('20311','561','logout','keluar','2025-10-04 15:15:56');
INSERT INTO `log` VALUES ('20312','554','login','Selesai Ujian','2025-10-04 15:16:16');
INSERT INTO `log` VALUES ('20313','518','login','Selesai Ujian','2025-10-04 15:16:17');
INSERT INTO `log` VALUES ('20314','518','logout','keluar','2025-10-04 15:16:21');
INSERT INTO `log` VALUES ('20315','554','logout','keluar','2025-10-04 15:16:21');
INSERT INTO `log` VALUES ('20316','519','login','Selesai Ujian','2025-10-04 15:16:22');
INSERT INTO `log` VALUES ('20317','476','login','Selesai Ujian','2025-10-04 15:17:09');
INSERT INTO `log` VALUES ('20318','476','logout','keluar','2025-10-04 15:17:23');
INSERT INTO `log` VALUES ('20319','463','login','Selesai Ujian','2025-10-04 15:18:39');
INSERT INTO `log` VALUES ('20320','463','logout','keluar','2025-10-04 15:19:03');
INSERT INTO `log` VALUES ('20321','545','login','Selesai Ujian','2025-10-04 15:19:12');
INSERT INTO `log` VALUES ('20322','545','logout','keluar','2025-10-04 15:19:19');
INSERT INTO `log` VALUES ('20323','546','login','Selesai Ujian','2025-10-04 15:19:33');
INSERT INTO `log` VALUES ('20324','546','logout','keluar','2025-10-04 15:19:37');
INSERT INTO `log` VALUES ('20325','557','login','Selesai Ujian','2025-10-04 15:19:54');
INSERT INTO `log` VALUES ('20326','464','login','Selesai Ujian','2025-10-04 15:21:06');
INSERT INTO `log` VALUES ('20327','464','logout','keluar','2025-10-04 15:21:12');
INSERT INTO `log` VALUES ('20328','524','login','Selesai Ujian','2025-10-04 15:21:57');
INSERT INTO `log` VALUES ('20329','488','login','Selesai Ujian','2025-10-04 15:22:39');
INSERT INTO `log` VALUES ('20330','547','login','Selesai Ujian','2025-10-04 15:23:13');
INSERT INTO `log` VALUES ('20331','547','logout','keluar','2025-10-04 15:23:15');
INSERT INTO `log` VALUES ('20332','511','login','Selesai Ujian','2025-10-04 15:23:34');
INSERT INTO `log` VALUES ('20333','466','login','Selesai Ujian','2025-10-04 15:23:49');
INSERT INTO `log` VALUES ('20334','466','logout','keluar','2025-10-04 15:23:52');
INSERT INTO `log` VALUES ('20335','515','login','Selesai Ujian','2025-10-04 15:24:02');
INSERT INTO `log` VALUES ('20336','459','login','Selesai Ujian','2025-10-04 15:26:53');
INSERT INTO `log` VALUES ('20337','459','testongoing','sedang ujian','2025-10-04 15:26:58');
INSERT INTO `log` VALUES ('20338','541','login','Selesai Ujian','2025-10-04 15:28:10');
INSERT INTO `log` VALUES ('20339','541','logout','keluar','2025-10-04 15:28:16');
INSERT INTO `log` VALUES ('20340','459','login','Selesai Ujian','2025-10-04 15:42:25');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mapel` VALUES   ('2','PAI','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','PAI','40','0','40','0','100','0','12','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:02:20','1','70','');
INSERT INTO `mapel` VALUES ('3','PKN','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','PP','40','0','40','0','100','0','12','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:02:51','1','70','');
INSERT INTO `mapel` VALUES ('4','BI','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','BIN','40','0','40','0','100','0','semua','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:06:29','1','70','');
INSERT INTO `mapel` VALUES ('5','MTK','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','MTK','40','0','40','0','100','0','12','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:03:28','1','70','');
INSERT INTO `mapel` VALUES ('6','BING','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','BING','40','0','40','0','100','0','12','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:03:53','1','70','');
INSERT INTO `mapel` VALUES ('7','BAM','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','MULOK','40','0','40','0','10','0','12','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:04:19','1','70','');
INSERT INTO `mapel` VALUES ('8','KK_TKJ','a:1:{i:0;s:3:\"TKJ\";}','285','KK_TKJ','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIITKJ\";}','2025-11-07 10:49:59','1','70','');
INSERT INTO `mapel` VALUES ('9','KK_MP','a:1:{i:0;s:2:\"MP\";}','285','KK_MP','40','0','40','0','100','0','12','5','a:2:{i:0;s:6:\"XIIMP1\";i:1;s:6:\"XIIMP2\";}','2025-11-07 10:53:36','1','70','');
INSERT INTO `mapel` VALUES ('10','KK_KL','a:1:{i:0;s:2:\"KL\";}','285','KK_KL','40','0','40','0','100','0','12','5','a:1:{i:0;s:5:\"XIIKL\";}','2025-11-07 10:54:06','1','70','');
INSERT INTO `mapel` VALUES ('11','KK_DKV','a:1:{i:0;s:3:\"DKV\";}','285','KK_DKV','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIIDKV\";}','2025-11-07 10:54:37','1','70','');
INSERT INTO `mapel` VALUES ('12','KK_BRT','a:1:{i:0;s:3:\"BRT\";}','285','KK_BRT','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIIBRT\";}','2025-11-07 10:55:25','1','70','');
INSERT INTO `mapel` VALUES ('13','KK_AKT','a:1:{i:0;s:3:\"AKT\";}','285','KK_AKL','40','0','40','0','100','0','12','5','a:2:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";}','2025-11-07 10:56:10','1','70','');
INSERT INTO `mapel` VALUES ('14','PKK','a:6:{i:0;s:3:\"AKT\";i:1;s:3:\"BRT\";i:2;s:3:\"DKV\";i:3;s:2:\"KL\";i:4;s:2:\"MP\";i:5;s:3:\"TKJ\";}','285','PKK','40','0','40','0','100','0','semua','5','a:8:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";i:2;s:6:\"XIIBRT\";i:3;s:6:\"XIIDKV\";i:4;s:5:\"XIIKL\";i:5;s:6:\"XIIMP1\";i:6;s:6:\"XIIMP2\";i:7;s:6:\"XIITKJ\";}','2025-11-07 11:04:52','1','70','');
INSERT INTO `mapel` VALUES ('15','MP_TKJ','a:1:{i:0;s:3:\"TKJ\";}','285','M_PTKJ','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIITKJ\";}','2025-11-07 10:57:13','1','70','');
INSERT INTO `mapel` VALUES ('16','MP_AKT','a:1:{i:0;s:3:\"AKT\";}','285','MP_AKL','40','0','40','0','100','0','12','5','a:2:{i:0;s:7:\"XIIAKT1\";i:1;s:7:\"XIIAKT2\";}','2025-11-07 10:57:43','1','70','');
INSERT INTO `mapel` VALUES ('17','MP_BRT','a:1:{i:0;s:3:\"BRT\";}','285','MP_BRT','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIIBRT\";}','2025-11-07 10:58:11','1','70','');
INSERT INTO `mapel` VALUES ('18','MP_DKV','a:1:{i:0;s:3:\"DKV\";}','285','MP_DKV','40','0','40','0','100','0','12','5','a:1:{i:0;s:6:\"XIIDKV\";}','2025-11-07 11:05:31','1','70','');
INSERT INTO `mapel` VALUES ('19','MP_KL','a:1:{i:0;s:2:\"KL\";}','285','MP_KL','40','0','40','0','100','0','12','5','a:1:{i:0;s:5:\"XIIKL\";}','2025-11-07 10:58:57','1','70','');
INSERT INTO `mapel` VALUES ('20','MP_MP','a:1:{i:0;s:2:\"MP\";}','285','M_PMP','40','0','40','0','100','0','12','5','a:2:{i:0;s:6:\"XIIMP1\";i:1;s:6:\"XIIMP2\";}','2025-11-07 10:59:22','1','70','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mata_pelajaran` VALUES   ('BIN','BAHASA INDONESIA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('BING','BAHASA INGGRIS',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_AKL','DASAR PEROGRAM KEAHLIAN AKL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_BRT','DASAR PEROGRAM KEAHLIAN BRT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_DKV','DASAR PEROGRAM KEAHLIAN DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_KL','DASAR PEROGRAM KEAHLIAN KL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_MP','DASAR PEROGRAM KEAHLIAN MP',NULL);
INSERT INTO `mata_pelajaran` VALUES ('DPK_TKJ','DASAR PEROGRAM KEAHLIAN TKJ',NULL);
INSERT INTO `mata_pelajaran` VALUES ('IF','INFORMATIKA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('IPAS','ILMU PENGETAHUAN ALAM DAN SOSIAL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KKA','KODING DAN KECERDASANARTIFISIAL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_AKL','KONSENTRASI KEAHLIAN AKL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_BRT','KONSENTRASI KEAHLIAN BRT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_DKV','KONSENTRASI KEAHLIAN DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_KL','KONSENTRASI KEAHLIAN KL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_MP','KONSENTRASI KEAHLIAN MP',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KK_TKJ','KONSENTRASI KEAHLIAN TKJ',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MP_AKL','MATA PELAJARAN PILIHAN AKL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MP_BRT','MATA PELAJARAN PILIHAN BRT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MP_DKV','MATA PELAJARAN PILIHAN DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MP_KL','MATA PELAJARAN PILIHAN KL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MTK','MATEMATIKA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MULOK','KEMINANGKABAUAN',NULL);
INSERT INTO `mata_pelajaran` VALUES ('M_PMP','MATA PELAJARAN PILIHAN MP',NULL);
INSERT INTO `mata_pelajaran` VALUES ('M_PTKJ','MATA PELAJARAN PILIHAN TKJ',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PAI','PENDIDIKAN AGAMA ISLAM',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PJOK','PENJASKES',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PKK','PROJEK KREATIF KEWIRAUSAHAAN',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PP','PENDIDIKAN PANCASILA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('SB','SENI BUDAYA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('SEJ','SEJARAH',NULL);

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `materi` VALUES   ('12','1','a:1:{i:0;s:5:\"semua\";}','COVID','COVID SUDAH USAI','<p>CONTOH MATERI</p>',NULL,'2020-07-05 21:00:00','https://www.youtube.com/watch?v=0-mwwfaSD44','2020-07-05 21:10:16',NULL);
INSERT INTO `materi` VALUES ('13','1','a:1:{i:0;s:5:\"semua\";}','COVID','CONTOH LAGI','<p><iframe src=\"https://www.youtube.com/embed/0-mwwfaSD44\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p><a href=\"https://www.youtube.com/watch?v=0-mwwfaSD44\" target=\"_blank\" rel=\"noopener\">TONTON VIDEO</a></p>',NULL,'2020-07-05 21:00:00','','2020-07-05 21:14:56',NULL);

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `nilai_temp`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai_temp`;
CREATE TABLE `nilai_temp` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6491 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
INSERT INTO `nilai_temp` VALUES   ('106','13','0','72','','2025-09-29 07:57:44','2025-09-29 07:57:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.168','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('107','13','0','87','','2025-09-29 07:57:45','2025-09-29 07:57:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.202','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('108','13','0','119','','2025-09-29 07:57:45','2025-09-29 07:57:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.125','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('109','13','0','82','','2025-09-29 07:57:46','2025-09-29 07:57:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.193','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('110','13','0','125','','2025-09-29 07:57:47','2025-09-29 07:57:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.145','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('111','13','0','93','','2025-09-29 07:57:47','2025-09-29 07:57:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.251','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('112','13','0','99','','2025-09-29 07:57:48','2025-09-29 07:57:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.194','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('113','13','0','91','','2025-09-29 07:57:50','2025-09-29 07:57:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.129','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('171','13','0','130','','2025-09-29 07:59:03','2025-09-29 07:59:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.139','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');
INSERT INTO `nilai_temp` VALUES ('237','13','0','135','','2025-09-29 08:05:40','2025-09-29 08:05:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172.16.201.57','0',NULL,NULL,NULL,'0','',NULL,NULL,'0');

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$OKWG8PU9d8J8dCy4dnCvRewDrDmfUt930JYYCizT/mxY1EVoDPp8G','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('273','-','PAJAR SIDIK NURFAKHRI',NULL,'pajar','$2y$10$QFJSTIMfE0kYtDOm/k3z7enCO2HhNHxVu1m12Kclc.rLF177OisYq','pengawas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ONLINE');
INSERT INTO `pengawas` VALUES ('285','123456','Guru 1','XITKJB','guru1','$2y$10$jmRcXx0JdjG.J4OWq1TBc.B.i2lhppgrCec/kxw9JX0R1ASk25Rly','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `pengumuman` VALUES   ('8','eksternal','INFO JADWAL UJIAN','1','<p>Untuk ujian sekolah dilakukan secara daring atau online menggunakan Hp Android, PC, Laptop. Aplikasi ujian diakses dengan browser Google Chrome.</p>','2020-04-04 22:23:29');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `pk` VALUES   ('AKT','AKT',NULL);
INSERT INTO `pk` VALUES ('BRT','BRT',NULL);
INSERT INTO `pk` VALUES ('DKV','DKV',NULL);
INSERT INTO `pk` VALUES ('KL','KL',NULL);
INSERT INTO `pk` VALUES ('MP','MP',NULL);
INSERT INTO `pk` VALUES ('TKJ','TKJ',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `ruang` VALUES   ('LAB_AKT','LAB_AKT');
INSERT INTO `ruang` VALUES ('LAB_DKV','LAB_DKV');
INSERT INTO `ruang` VALUES ('LAB_KKPI','LAB_KKPI');
INSERT INTO `ruang` VALUES ('LAB_MP','LAB_MP');
INSERT INTO `ruang` VALUES ('LAB_TIK','LAB_TIK');
INSERT INTO `ruang` VALUES ('LAB_TKJ','LAB_TKJ');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `server` VALUES   ('SR01','SERVER_1','aktif');
INSERT INTO `server` VALUES ('','','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `sesi` VALUES   ('1','1');
INSERT INTO `sesi` VALUES ('2','2');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `bc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `setting` VALUES   ('1','CANDY SCHOOL','10302407','SMK NEGERI 1 BATUSANGAKR','SMK','SYOFRIANI, M.Pd.E','197801102005012008','Jl, Pintu Rayo Saruaso','Tanjung Emas         ','Tanah datar','0752-71063','-','smk1batusangkar.sch.id','smkn01batusangkar@gmail.com','dist/img/logo7.png','','KARTU PESERTA SUMATIF AKHIR SEMESTER GANJIL','SUMATIF TENGAH SEMESTER','2.9','http://192.168.0.200/candycbt','Asia/Jakarta','pusat','SR01','http://pts.smkhsagung.sch.id/','HO3FIrBYcFUMp0','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.9.4','dist/img/bc.png');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','','','0');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA3','soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'aktif',
  `online` int(1) DEFAULT 0,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `siswa` VALUES   ('1','XIIAKT1','AKT','001','001','ADELIA HIKLIMA','12','LAB_KKPI','1','user001','95443','','SR01',NULL,NULL,NULL,'kristen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('2','XIIAKT1','AKT','002','002','ADITYA ANDHIKA','12','LAB_KKPI','1','user002','26212','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('3','XIIAKT1','AKT','003','003','AISYAH NAHDATUL KHOIROT','12','LAB_KKPI','1','user003','42825','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('4','XIIAKT1','AKT','004','004','AYU PUTRI ANISA','12','LAB_KKPI','1','user004','23026','','SR01',NULL,NULL,NULL,'kristen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('5','XIIAKT1','AKT','005','005','CINDICA AMANDA','12','LAB_KKPI','1','user005','37134','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('6','XIIAKT1','AKT','006','006','DEA WULANDARI','12','LAB_KKPI','1','user006','20051','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('7','XIIAKT1','AKT','007','007','DELSI NILVIA','12','LAB_KKPI','1','user007','96250','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('8','XIIAKT1','AKT','008','008','DHYVA RADYATUL HASANAH','12','LAB_KKPI','1','user008','76454','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('9','XIIAKT1','AKT','009','009','EGIL DWI MARSHA','12','LAB_KKPI','1','user009','38715','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('10','XIIAKT1','AKT','010','010','ELVA BELGIA','12','LAB_KKPI','1','user010','40019','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('11','XIIAKT1','AKT','011','011','IRNA WIDANI','12','LAB_KKPI','1','user011','66830','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('12','XIIAKT1','AKT','012','012','LANADI','12','LAB_KKPI','1','user012','85731','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('13','XIIAKT1','AKT','013','013','LIDYA PUSPITA SARI','12','LAB_KKPI','1','user013','86160','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('14','XIIAKT1','AKT','014','014','MUHAMMAD I?BAL MAULANA','12','LAB_KKPI','1','user014','86401','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('15','XIIAKT1','AKT','015','015','MUSTIKA ANANDA PUTRI','12','LAB_KKPI','1','user015','73364','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('16','XIIAKT1','AKT','016','016','NADIA SANTIKA','12','LAB_KKPI','1','user016','50355','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('17','XIIAKT1','AKT','017','017','NAJWA SALSABILA','12','LAB_KKPI','1','user017','51468','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('18','XIIAKT1','AKT','018','018','RAUDATUL JANNAH','12','LAB_KKPI','1','user018','71375','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('19','XIIAKT1','AKT','019','019','RENDY APRIYANDY','12','LAB_KKPI','1','user019','57396','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('20','XIIAKT1','AKT','020','020','RIZKI KURNIAWAN','12','LAB_KKPI','1','user020','96465','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('21','XIIAKT1','AKT','021','021','WIDYA FAJRA','12','LAB_TKJ','1','user021','28165','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('22','XIIAKT1','AKT','022','022','YULANDARI','12','LAB_TKJ','1','user022','35618','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('23','XIIAKT2','AKT','023','023','ADILA JUNI LESTARI','12','LAB_TKJ','1','user023','72620','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('24','XIIAKT2','AKT','024','024','AKBAR GADING','12','LAB_TKJ','1','user024','82400','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('25','XIIAKT2','AKT','025','025','AMELZA APRILNA','12','LAB_TKJ','1','user025','42610','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('26','XIIAKT2','AKT','026','026','ARNA MULYATI','12','LAB_TKJ','1','user026','95782','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('27','XIIAKT2','AKT','027','027','CINTA FITRI','12','LAB_TKJ','1','user027','27709','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('28','XIIAKT2','AKT','028','028','EPA MARLINA','12','LAB_TKJ','1','user028','70563','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('29','XIIAKT2','AKT','029','029','FILZA YULIAGUS','12','LAB_TKJ','1','user029','79033','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('30','XIIAKT2','AKT','030','030','GENNA FAZMUL YUSKA','12','LAB_TKJ','1','user030','24661','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('31','XIIAKT2','AKT','031','031','HASIFA KHAIRULNISA','12','LAB_TKJ','1','user031','58523','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('32','XIIAKT2','AKT','032','032','HERLINA CANTIKA','12','LAB_TKJ','1','user032','55298','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('33','XIIAKT2','AKT','033','033','IRA RAMADANI','12','LAB_TKJ','1','user033','47073','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('34','XIIAKT2','AKT','034','034','IRMA ADZANI','12','LAB_TKJ','1','user034','55204','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('35','XIIAKT2','AKT','035','035','M RIDHO GUSRIAN','12','LAB_TKJ','1','user035','69382','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('36','XIIAKT2','AKT','036','036','MIFTHAHUL HASANAH','12','LAB_TKJ','1','user036','82623','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('37','XIIAKT2','AKT','037','037','MUHAMMAD DAFFA','12','LAB_TKJ','1','user037','86356','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('38','XIIAKT2','AKT','038','038','MUHAMMAD FADHIL','12','LAB_TKJ','1','user038','98332','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('39','XIIAKT2','AKT','039','039','NAZIA RAUDHATUL JANNAH','12','LAB_TKJ','1','user039','18257','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('40','XIIAKT2','AKT','040','040','NOFRIANTI PUTRI','12','LAB_TKJ','1','user040','44795','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('41','XIIAKT2','AKT','041','041','NUR AISYAH','12','LAB_TKJ','1','user041','59252','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('42','XIIAKT2','AKT','042','042','NURUL UMANAH','12','LAB_TKJ','1','user042','17868','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('43','XIIAKT2','AKT','043','043','OLIVIA PUTRIANA HILMY','12','LAB_TKJ','1','user043','62607','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('44','XIIAKT2','AKT','044','044','SHERLY DUANTI PUTRI','12','LAB_TKJ','1','user044','31977','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('45','XIIAKT2','AKT','045','045','SUCI RAHMANITA AZIZAH','12','LAB_TKJ','1','user045','91168','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('46','XIIMP1','MP','046','046','ABRAR RAKA SALMAN','12','LAB_MP','1','user046','35704','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('47','XIIMP1','MP','047','047','AHMAD RAFFY','12','LAB_MP','1','user047','44033','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('48','XIIMP1','MP','048','048','ANISA KURNIA CAHAYA','12','LAB_MP','1','user048','31044','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('49','XIIMP1','MP','049','049','ARTIKA MANDA SARI','12','LAB_MP','1','user049','16508','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('50','XIIMP1','MP','050','050','ASTRI ANOJA','12','LAB_MP','1','user050','58218','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('51','XIIMP1','MP','051','051','AYESHA AZZAHRA','12','LAB_MP','1','user051','19634','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('52','XIIMP1','MP','052','052','AZIZAH PUTRI','12','LAB_MP','1','user052','60467','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('53','XIIMP1','MP','053','053','CHIRUL RAHMA DIANTO','12','LAB_MP','1','user053','93478','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('54','XIIMP1','MP','054','054','DELVITA LESTARI','12','LAB_MP','1','user054','74104','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('55','XIIMP1','MP','055','055','EVAN FERNANDES','12','LAB_MP','1','user055','84017','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('56','XIIMP1','MP','056','056','FAREL RIDHO ILAHI','12','LAB_MP','1','user056','48460','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('57','XIIMP1','MP','057','057','FHATAR SAPUTRA','12','LAB_MP','1','user057','80167','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('58','XIIMP1','MP','058','058','FRANSISKA YOLA YOLANDA','12','LAB_MP','1','user058','25346','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('59','XIIMP1','MP','059','059','HIKMAH FITRI','12','LAB_MP','1','user059','40954','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('60','XIIMP1','MP','060','060','IDRIS SYAHPUTRA','12','LAB_MP','1','user060','21647','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('61','XIIMP1','MP','061','061','INTAN PUTRI AMELIA','12','LAB_MP','1','user061','46641','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('62','XIIMP1','MP','062','062','KEYLA PUTRI RADISTI','12','LAB_MP','1','user062','69144','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('63','XIIMP1','MP','063','063','NABILA DARMA SAPUTRI','12','LAB_MP','1','user063','31721','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('64','XIIMP1','MP','064','064','NAJLA HERMASYAH','12','LAB_MP','1','user064','33963','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('65','XIIMP1','MP','065','065','NURJIHAN FADILA','12','LAB_MP','1','user065','85402','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('66','XIIMP1','MP','066','066','NURSINTA RAMADANI','12','LAB_AKT','1','user066','57261','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('67','XIIMP1','MP','067','067','RIRIN JULIA DENINGSI','12','LAB_AKT','1','user067','24266','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('68','XIIMP1','MP','068','068','SARI RAHMADANI','12','LAB_AKT','1','user068','26329','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('69','XIIMP1','MP','069','069','SHIVA AZAHRA','12','LAB_AKT','1','user069','62735','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('70','XIIMP1','MP','070','070','SILVI GUSNIVA','12','LAB_AKT','1','user070','52749','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('71','XIIMP1','MP','071','071','SYAFITRI AMELIA','12','LAB_AKT','1','user071','40995','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('72','XIIMP1','MP','072','072','SYAKIRA ALFIYA HUMAIRA','12','LAB_AKT','1','user072','83435','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('73','XIIMP1','MP','073','073','WILDAN HA??I MUBARO?','12','LAB_AKT','1','user073','23155','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('74','XIIMP1','MP','074','074','ZAHRA','12','LAB_AKT','1','user074','20328','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('75','XIIMP1','MP','075','075','ZAKA ALFARISI','12','LAB_AKT','1','user075','57259','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('76','XIIMP2','MP','076','076','AFIFA MULIA SARI','12','LAB_AKT','1','user076','64829','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('77','XIIMP2','MP','077','077','AIDIL PUTRA','12','LAB_AKT','1','user077','42636','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('78','XIIMP2','MP','078','078','AISYAH','12','LAB_AKT','1','user078','68072','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('79','XIIMP2','MP','079','079','ANGEL PRADIS VITRI','12','LAB_AKT','1','user079','69675','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('80','XIIMP2','MP','080','080','ANGGUN DESMALIA PUTRI','12','LAB_AKT','1','user080','73474','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('81','XIIMP2','MP','081','081','CELSY RAHMAHDANI','12','LAB_AKT','1','user081','90518','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('82','XIIMP2','MP','082','082','DENIA SHOHIFATUL JANNAH','12','LAB_AKT','1','user082','28309','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('83','XIIMP2','MP','083','083','EFA SRILAWATI','12','LAB_AKT','1','user083','53122','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('84','XIIMP2','MP','084','084','ESYA THUMARDIAH','12','LAB_AKT','1','user084','27804','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('85','XIIMP2','MP','085','085','GHEASYAH PUTRI','12','LAB_AKT','1','user085','52350','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('86','XIIMP2','MP','086','086','HAMZAH','12','LAB_TIK','1','user086','48518','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('87','XIIMP2','MP','087','087','HANIFA','12','LAB_TIK','1','user087','36624','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('88','XIIMP2','MP','088','088','HIKMATUL FAIZA','12','LAB_TIK','1','user088','25840','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('89','XIIMP2','MP','089','089','ISLAMIATI','12','LAB_TIK','1','user089','58236','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('90','XIIMP2','MP','090','090','JIMMY PRATAMA','12','LAB_TIK','1','user090','82628','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('91','XIIMP2','MP','091','091','KARINA NOVELA PUTRI','12','LAB_TIK','1','user091','83758','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('92','XIIMP2','MP','092','092','KEYCIAKILLA NAZIRA','12','LAB_TIK','1','user092','70280','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('93','XIIMP2','MP','093','093','KHAIRUNISA WIDIANATA','12','LAB_TIK','1','user093','46946','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('94','XIIMP2','MP','094','094','LATIFA TUZZAHRA','12','LAB_TIK','1','user094','70252','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('95','XIIMP2','MP','095','095','MIA WAHYUNI PUTRI','12','LAB_TIK','1','user095','34110','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('96','XIIMP2','MP','096','096','MUHAMMAD EDO AL RUSMAN','12','LAB_TIK','1','user096','73033','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('97','XIIMP2','MP','097','097','MUHAMMAD I?BAL RANGKUTI','12','LAB_TIK','1','user097','96088','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('98','XIIMP2','MP','098','098','MUHAMMAD NOFAN','12','LAB_TIK','1','user098','86571','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('99','XIIMP2','MP','099','099','NADIA SALSABILA','12','LAB_TIK','1','user099','64846','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('100','XIIMP2','MP','100','100','PUTRI ANDINI','12','LAB_TIK','1','user100','60094','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('101','XIIMP2','BRT','101','101','RAHMATUL FATIA AZRI','12','LAB_DKV','1','user101','80767','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('102','XIIMP2','BRT','102','102','SALWA SYAFI?AH FADILLAH','12','LAB_DKV','1','user102','91890','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('103','XIIMP2','BRT','103','103','SELFIA MARWINI','12','LAB_DKV','1','user103','50362','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('104','XIIMP2','BRT','104','104','SHIFA ?UR\'AINI','12','LAB_DKV','1','user104','33899','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('105','XIIBRT','BRT','105','105','ALDINO VEBRIANSYAH','12','LAB_DKV','1','user105','89780','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('106','XIIBRT','BRT','106','106','ALIF PANDU ILLAHI','12','LAB_DKV','1','user106','59627','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('107','XIIBRT','BRT','107','107','ANISA FITRI HANDAYANI','12','LAB_DKV','1','user107','21470','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('108','XIIBRT','BRT','108','108','ARJUNA LESMANA PUTRA','12','LAB_DKV','1','user108','16904','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('109','XIIBRT','BRT','109','109','AYATULLAH ZAINI','12','LAB_DKV','1','user109','76962','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('110','XIIBRT','BRT','110','110','CHELSY HELENA PUTRI','12','LAB_DKV','1','user110','82934','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('111','XIIBRT','BRT','111','111','CINTA ANUGRAH','12','LAB_DKV','1','user111','92836','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('112','XIIBRT','BRT','112','112','DESI GUSTIA','12','LAB_DKV','1','user112','78129','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('113','XIIBRT','TKJ','113','113','DIKI AFANDA SAPUTRA','12','LAB_DKV','1','user113','18416','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('114','XIIBRT','TKJ','114','114','DIVA','12','LAB_DKV','1','user114','64465','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('115','XIIBRT','TKJ','115','115','DIVLA','12','LAB_DKV','1','user115','90601','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('116','XIIBRT','TKJ','116','116','ELCHIA RAHMI','12','LAB_DKV','1','user116','25810','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('117','XIIBRT','TKJ','117','117','FADEL NOVIYANDI','12','LAB_DKV','1','user117','86479','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('118','XIIBRT','BRT','118','118','FAHRU FAUZI ARMANSYAH','12','LAB_DKV','1','user118','22463','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('119','XIIBRT','BRT','119','119','IKHSANUL FIKRI','12','LAB_DKV','1','user119','33113','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('120','XIIBRT','BRT','120','120','JORDY ASKARINO PUTRA','12','LAB_DKV','1','user120','23517','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('121','XIIBRT','BRT','121','121','KAFKA','12','LAB_DKV','1','user121','55554','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('122','XIIBRT','BRT','122','122','MIFRA RAMADANI','12','LAB_DKV','1','user122','93061','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('123','XIIBRT','BRT','123','123','MIKO','12','LAB_DKV','1','user123','88556','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('124','XIIBRT','BRT','124','124','MUDATUL SIKRI','12','LAB_DKV','1','user124','14193','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('125','XIIBRT','BRT','125','125','MUHAMMAD ALVAD','12','LAB_DKV','1','user125','78371','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('126','XIIBRT','BRT','126','126','MUHAMMAD ARIEL RAMADHAN','12','LAB_KKPI','2','user126','16149','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('127','XIIBRT','BRT','127','127','MUTIARA LESTARI','12','LAB_KKPI','2','user127','87388','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('128','XIIBRT','BRT','128','128','NADIA PUTRI AMELIA','12','LAB_KKPI','2','user128','98381','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('129','XIIBRT','BRT','129','129','NUR ELIZA','12','LAB_KKPI','2','user129','68790','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('130','XIIBRT','BRT','130','130','RAFI AHMAD','12','LAB_KKPI','2','user130','41006','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('131','XIIBRT','BRT','131','131','RAHMI PUTRI','12','LAB_KKPI','2','user131','25266','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('132','XIIBRT','BRT','132','132','REFA DILA PUTRI','12','LAB_KKPI','2','user132','37360','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('133','XIIBRT','BRT','133','133','THALITHA ASSYIFA','12','LAB_KKPI','2','user133','41201','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('134','XIIBRT','BRT','134','134','VIKY HARGIANTO','12','LAB_KKPI','2','user134','85086','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('135','XIIBRT','BRT','135','135','VIVI OLIVIA','12','LAB_KKPI','2','user135','12824','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('136','XIIBRT','BRT','136','136','WIRA MONALISA','12','LAB_KKPI','2','user136','98681','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('137','XIIBRT','BRT','137','137','YANDI ALVINDO','12','LAB_KKPI','2','user137','73982','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('138','XIITKJ','TKJ','138','138','ABDULLAH','12','LAB_KKPI','2','user138','82597','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('139','XIITKJ','TKJ','139','139','ADINDA FRISKA JAURI','12','LAB_KKPI','2','user139','48031','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('140','XIITKJ','TKJ','140','140','AHMAD IRVAN','12','LAB_KKPI','2','user140','67556','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('141','XIITKJ','TKJ','141','141','ANANG AL HABIBIE','12','LAB_KKPI','2','user141','62771','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('142','XIITKJ','TKJ','142','142','ANIF','12','LAB_KKPI','2','user142','18112','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('143','XIITKJ','TKJ','143','143','ARIEF RAHMAT ROZAK','12','LAB_TKJ','2','user143','28552','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('144','XIITKJ','TKJ','144','144','ARIF RAHMAN','12','LAB_TKJ','2','user144','33293','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('145','XIITKJ','TKJ','145','145','AZILLA RAHMANITA','12','LAB_TKJ','2','user145','72094','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('146','XIITKJ','TKJ','146','146','CHELSI ISMU DELFIA','12','LAB_TKJ','2','user146','32893','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('147','XIITKJ','TKJ','147','147','DAFFA AGUSTIENDRI','12','LAB_TKJ','2','user147','24257','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('148','XIITKJ','TKJ','148','148','DITHO RAMADHAN','12','LAB_TKJ','2','user148','21722','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('149','XIITKJ','TKJ','149','149','DWI GEA SAFITRI','12','LAB_TKJ','2','user149','96883','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('150','XIITKJ','TKJ','150','150','FIGO ADRIANSYAH','12','LAB_TKJ','2','user150','50755','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('151','XIITKJ','TKJ','151','151','GHIFARI MUFTI ALBANA','12','LAB_TKJ','2','user151','94909','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('152','XIITKJ','TKJ','152','152','HABIBULLAH','12','LAB_TKJ','2','user152','12299','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('153','XIITKJ','TKJ','153','153','HIDAYATUL QAIDAH','12','LAB_TKJ','2','user153','21475','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('154','XIITKJ','TKJ','154','154','IHSAN KAMIL','12','LAB_TKJ','2','user154','45415','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('155','XIITKJ','TKJ','155','155','ILHAM RAMADHAN','12','LAB_TKJ','2','user155','49498','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('156','XIITKJ','TKJ','156','156','JERY MAULIADNA PRATAMA','12','LAB_TKJ','2','user156','80960','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('157','XIITKJ','TKJ','157','157','MOHAMMAD RIZKY FADILLAH','12','LAB_TKJ','2','user157','59780','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('158','XIITKJ','TKJ','158','158','MUHAMAD FARDHAN','12','LAB_TKJ','2','user158','66004','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('159','XIITKJ','TKJ','159','159','MUHAMMAD AL FARIZI','12','LAB_TKJ','2','user159','68146','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('160','XIITKJ','TKJ','160','160','MUHAMMAD ALIEF RIZKY','12','LAB_TKJ','2','user160','50281','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('161','XIITKJ','TKJ','161','161','MUHAMMAD FAHRUL ROZI','12','LAB_TKJ','2','user161','26875','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('162','XIITKJ','TKJ','162','162','MUHAMMAD REZA','12','LAB_TKJ','2','user162','94601','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('163','XIITKJ','TKJ','163','163','MUHAMMAD RIFAT','12','LAB_TKJ','2','user163','66927','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('164','XIITKJ','TKJ','164','164','MUTHIA ROHIMA','12','LAB_TKJ','2','user164','36976','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('165','XIITKJ','TKJ','165','165','NASWA','12','LAB_TKJ','2','user165','44385','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('166','XIITKJ','TKJ','166','166','RANDU ZAKY SAPUTRA','12','LAB_TKJ','2','user166','16510','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('167','XIITKJ','TKJ','167','167','RASYA MUHAMMAD AYYASY','12','LAB_TKJ','2','user167','54238','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('168','XIITKJ','TKJ','168','168','REHAN MAULANA','12','LAB_MP','2','user168','92103','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('169','XIITKJ','TKJ','169','169','RIZKY ARDIAN','12','LAB_MP','2','user169','23467','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('170','XIITKJ','TKJ','170','170','SURYA PUTRA NUGRAHA','12','LAB_MP','2','user170','70206','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('171','XIITKJ','TKJ','171','171','SYAFHIRATUL HIDAYAH','12','LAB_MP','2','user171','83304','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('172','XIITKJ','TKJ','172','172','UMAR AZIS ZULRAHMAN','12','LAB_MP','2','user172','84820','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('173','XIIDKV','DKV','173','173','ADITYA IRAWAN','12','LAB_MP','2','user173','56351','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('174','XIIDKV','DKV','174','174','ADRIFA MAHARANI','12','LAB_MP','2','user174','36037','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('175','XIIDKV','DKV','175','175','AHMAD GIFARI MAULANA','12','LAB_MP','2','user175','78116','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('176','XIIDKV','DKV','176','176','AHMAD IHSAN ABADI','12','LAB_MP','2','user176','68762','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('177','XIIDKV','DKV','177','177','ALBANI MUFTI ALAM','12','LAB_MP','2','user177','93035','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('178','XIIDKV','DKV','178','178','ALFI FARAS DEWANGGA','12','LAB_MP','2','user178','33949','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('179','XIIDKV','DKV','179','179','AMIRUL AMIN','12','LAB_MP','2','user179','17337','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('180','XIIDKV','DKV','180','180','ANDINI UTIYA KHASANAH','12','LAB_MP','2','user180','44143','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('181','XIIDKV','DKV','181','181','ANGGITA NOVELIA','12','LAB_MP','2','user181','52584','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('182','XIIDKV','DKV','182','182','FARHAN ALVIDO PRATAMA','12','LAB_MP','2','user182','42760','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('183','XIIDKV','DKV','183','183','FATIMAH AZ- ZAHRA','12','LAB_MP','2','user183','70252','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('184','XIIDKV','DKV','184','184','HABIBBUNAS','12','LAB_MP','2','user184','58213','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('185','XIIDKV','DKV','185','185','HABIL RAYVAN','12','LAB_MP','2','user185','18444','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('186','XIIDKV','DKV','186','186','HENDRA ADY SAPUTRA','12','LAB_MP','2','user186','10167','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('187','XIIDKV','DKV','187','187','MAULAN ADLY','12','LAB_MP','2','user187','48844','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('188','XIIDKV','DKV','188','188','MUHAMMAD AIDIL PUTRA','12','LAB_AKT','2','user188','61967','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('189','XIIDKV','DKV','189','189','MUHAMMAD FAREL ADHA','12','LAB_AKT','2','user189','43848','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('190','XIIDKV','DKV','190','190','MUHAMMAD GIANFRANCO Z','12','LAB_AKT','2','user190','61500','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('191','XIIDKV','DKV','191','191','MUHAMMAD MAHESA  A','12','LAB_AKT','2','user191','86223','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('192','XIIDKV','DKV','192','192','MUHAMMAD MICHELL','12','LAB_AKT','2','user192','91456','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('193','XIIDKV','DKV','193','193','MUHAMMAD NABIL PUTRA','12','LAB_AKT','2','user193','93696','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('194','XIIDKV','DKV','194','194','MUHAMMAD REVAN RAMADONI','12','LAB_AKT','2','user194','31051','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('195','XIIDKV','DKV','195','195','MUTIARA RAMADHANI','12','LAB_AKT','2','user195','95710','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('196','XIIDKV','DKV','196','196','NABILA','12','LAB_AKT','2','user196','99936','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('197','XIIDKV','DKV','197','197','NOERFALINA','12','LAB_AKT','2','user197','22977','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('198','XIIDKV','DKV','198','198','RAYHAN MAULANA','12','LAB_AKT','2','user198','41861','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('199','XIIDKV','DKV','199','199','RHETA MUHARESTU','12','LAB_AKT','2','user199','24648','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('200','XIIDKV','DKV','200','200','SANDI A.RAHMAT','12','LAB_AKT','2','user200','10098','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('201','XIIDKV','DKV','201','201','SIDI? ISMAIL','12','LAB_AKT','2','user201','80698','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('202','XIIDKV','DKV','202','202','YORI YOLANDRI','12','LAB_AKT','2','user202','42008','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('203','XIIDKV','DKV','203','203','ZAHARA','12','LAB_TIK','2','user203','54194','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('204','XIIDKV','DKV','204','204','ZAKIA RANI','12','LAB_TIK','2','user204','39667','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('205','XIIKL','KL','205','205','AMELIA SRI WAHYUNI','12','LAB_TIK','2','user205','13320','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('206','XIIKL','KL','206','206','ARYA PRATAMA','12','LAB_TIK','2','user206','18587','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('207','XIIKL','KL','207','207','DAVID PUTRA ERWIN','12','LAB_TIK','2','user207','90613','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('208','XIIKL','KL','208','208','DENISRA NURFIZA BANARINI','12','LAB_TIK','2','user208','65115','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('209','XIIKL','KL','209','209','DIFA ARIESTY','12','LAB_TIK','2','user209','12659','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('210','XIIKL','KL','210','210','DISTYARA FEBRIANI','12','LAB_TIK','2','user210','48676','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('211','XIIKL','KL','211','211','FATMA GUSNIYATI','12','LAB_TIK','2','user211','34524','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('212','XIIKL','KL','212','212','FEBI DWI PUTRI RINALDI','12','LAB_TIK','2','user212','24522','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('213','XIIKL','KL','213','213','IIF FAUZIA','12','LAB_TIK','2','user213','66870','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('214','XIIKL','KL','214','214','INTAN PRATIWI','12','LAB_TIK','2','user214','63763','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('215','XIIKL','KL','215','215','IZZATIL MARDIYAH','12','LAB_TIK','2','user215','44794','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('216','XIIKL','KL','216','216','LARASAKI IMMANISA','12','LAB_TIK','2','user216','74723','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('217','XIIKL','KL','217','217','M. RIZKI AL FHATAN','12','LAB_TIK','2','user217','58435','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('218','XIIKL','KL','218','218','MARSYA DEFINSA','12','LAB_DKV','2','user218','85126','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('219','XIIKL','KL','219','219','MELATIKA','12','LAB_DKV','2','user219','39091','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('220','XIIKL','KL','220','220','MIFTAHUL JANNAH','12','LAB_DKV','2','user220','31062','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('221','XIIKL','KL','221','221','NABIL ABDUL GANI','12','LAB_DKV','2','user221','68104','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('222','XIIKL','KL','222','222','NABILLA AURA WINDRI','12','LAB_DKV','2','user222','60363','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('223','XIIKL','KL','223','223','PUTRI AULIA RAHMA','12','LAB_DKV','2','user223','89347','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('224','XIIKL','KL','224','224','RATU ADINDI BILBINA','12','LAB_DKV','2','user224','83396','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('225','XIIKL','KL','225','225','RAYSA RAMADHANI Z','12','LAB_DKV','2','user225','23482','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('226','XIIKL','KL','226','226','REFNI DESNITA','12','LAB_DKV','2','user226','96671','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('227','XIIKL','KL','227','227','RIVAL RIZ?I ANANDA','12','LAB_DKV','2','user227','58761','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('228','XIIKL','KL','228','228','SA\'ADATUL HUSNA','12','LAB_DKV','2','user228','20479','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('229','XIIKL','KL','229','229','SABDA SYAIFULLAH','12','LAB_DKV','2','user229','80180','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('230','XIIKL','KL','230','230','SAULA SYAIFULLAH','12','LAB_DKV','2','user230','63419','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('231','XIIKL','KL','231','231','SURYA BUANA','12','LAB_DKV','2','user231','56533','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('232','XIIKL','KL','232','232','SYABIRA PUTRI','12','LAB_DKV','2','user232','31845','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('233','XIIKL','KL','233','233','TIARA SANIA','12','LAB_DKV','2','user233','84317','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('234','XIIKL','KL','234','234','VIARA ELFRIDA','12','LAB_DKV','2','user234','24182','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('235','XIIKL','KL','235','235','WIDRIYAN INDAH SARI','12','LAB_DKV','2','user235','54308','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('236','XIIKL','KL','236','236','ZAHARA PUTRI','12','LAB_DKV','2','user236','23701','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('237','XIIKL','KL','237','237','ZAIRA JANNATUL FITRI','12','LAB_DKV','2','user237','28151','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `token` VALUES   ('1','QHKOGS','2025-10-04 13:57:49','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `ulang_kkm` int(1) NOT NULL,
  `btn_selesai` int(11) NOT NULL,
  `pelanggaran` int(5) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
