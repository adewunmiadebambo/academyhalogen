<?php
session_start();
include('connect.php'); 

if (!isset($_SESSION['MM_Username'])){

header('Location:./');
exit;

}

$id = $_GET['id'];

$qsHome = mysqli_query($connect, "delete from signup_application where id = '$id'");

header("Location: membership.php");


?>