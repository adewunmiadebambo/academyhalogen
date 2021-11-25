<?php
session_start();
include('connect.php');
include('administrator-session.php');
include('fns.php');

$id = base64_decode($_GET['id']);
$tab = base64_decode($_GET['tab']);
$return_url = base64_decode($_GET['return_url']); 


mysqli_query($connect,"delete from $tab where id = '$id'");

header("Location: $return_url?d=del");

?>