<?php
session_start();
include('connect.php');
include('administrator-session.php');
include('fns.php');

$id = base64_decode($_GET['id']);
$tab = base64_decode($_GET['tab']);
$return_url = base64_decode($_GET['return_url']); 
$status = base64_decode($_GET['status']); 


mysqli_query($connect, "update $tab set status = '$status' where id = '$id'");

header("Location: $return_url");

?>