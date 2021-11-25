<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$id = $_GET['id'];

$qsHome = mysqli_query($connect, "delete from events where id = '$id'");

header("Location: add-event.php");


?>