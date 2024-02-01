<?php
date_default_timezone_set('Asia/Manila');
$servername = 'localhost'; $username = 'root'; $password = '';

$server_date_time = date('Y-m-d H:i:s');
$server_date_only = date('Y-m-d');
$server_time = date('H:i:s');

try {
    $conn = new PDO ("mysql:host=$servername;dbname=falp_iprocs",$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo 'NO CONNECTION'.$e->getMessage();
}
?>