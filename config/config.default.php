<?php
session_start();
error_reporting(0);
(isset($_SESSION['id_user'])) ? $id_user = $_SESSION['id_user'] : $id_user = 0;
$isHttps = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off')
	|| (isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == 443)
	|| (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https')
	|| (isset($_SERVER['HTTP_CF_VISITOR']) && strpos($_SERVER['HTTP_CF_VISITOR'], 'https') !== false);
$protocol = $isHttps ? "https://" : "http://";
$host = $_SERVER['HTTP_HOST'] ?? 'localhost';

// Deteksi direktori root proyek secara otomatis
$docRoot = str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT'] ?? ''));
$appRoot = str_replace('\\', '/', realpath(dirname(__DIR__)));

$subDir = '';
if ($docRoot && strpos($appRoot, $docRoot) === 0) {
	$subDir = substr($appRoot, strlen($docRoot));
}
$subDir = '/' . ltrim(rtrim($subDir, '/'), '/');
if ($subDir === '/') {
	$subDir = '';
}

// Fallback jika diakses via localhost/smk_ujian
if ($subDir === '' && isset($_SERVER['REQUEST_URI'])) {
	$projectName = basename($appRoot);
	if (strpos($_SERVER['REQUEST_URI'], '/' . $projectName . '/') === 0 || $_SERVER['REQUEST_URI'] === '/' . $projectName) {
		$subDir = '/' . $projectName;
	}
}

$homeurl = $protocol . $host . $subDir;

// Parsing parameter routing ($pg, $ac, $id) secara dinamis
$requestPath = parse_url($_SERVER['REQUEST_URI'] ?? '/', PHP_URL_PATH);
if ($subDir !== '' && strpos($requestPath, $subDir) === 0) {
	$requestPath = substr($requestPath, strlen($subDir));
}
$segments = array_values(array_filter(explode('/', $requestPath), 'strlen'));

$pg = $segments[0] ?? '';
$ac = $segments[1] ?? '';
$id = $segments[2] ?? 0;

require "config.database.php";

$no = $jam = $mnt = $dtk = 0;
$info = '';
$waktu = date('H:i:s');
$tanggal = date('Y-m-d');
$datetime = date('Y-m-d H:i:s');

define("KEY", "76310EEFF2B5D3C887F238976A421B638CFEB0942AB8249CD0A29B125C91B3E5");
