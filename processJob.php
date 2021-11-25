<?php
session_start();
include("Connection/connect.php");

if(isset($_POST['postJob'])){

$name  = $_POST['title'];
$loc = $_POST['location'];
$quali = $row['qualification'];
$send = $row['send_to'];	
$date = date('Y-m-d');
$author = $_POST['alumni'];	


mysqli_query($connect, "insert into job set job_title = '$name', location = '$loc', qualification = '$quali', deadline = '$date', send_to = '$send', author = '$author'");	
	
header('Location: alumni-dashboard?msg=posted');	
	
}else{
$error = 'Insertion error please try again';
include('alumni-dashboard.php');
exit;
	
}
