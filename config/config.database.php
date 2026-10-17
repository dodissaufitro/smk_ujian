<?php

//konfigurasi server database
// $host = 'localhost';
// $user = 'candy294';
// $pass = 'SxBsaje88w5P85s6';
// $debe = 'candy294';
$host = 'localhost';
$user = 'root';
$pass = '';
$debe = 'candy294';

$koneksi = mysqli_connect($host, $user, $pass, "");
if ($koneksi) {
	$pilihdb = mysqli_select_db($koneksi, $debe);
	if ($pilihdb) {
		mysqli_query($koneksi, "SET sql_mode = ''");
		mysqli_set_charset($koneksi, 'utf8');
		$query = mysqli_query($koneksi, "SELECT * FROM setting WHERE id_setting='1'");
		if ($query) {
			$setting = mysqli_fetch_array($query);
			$sess = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM session WHERE id='1'"));
			date_default_timezone_set($setting['waktu']);
		}
	}
}
