<?php
session_start();
include("Connection/connect.php");

if(isset($_POST['submitForum'])){

$topic = mysqli_real_escape_string($connect, $_POST['topic']);
$alum = $_SESSION['alumni'];
$date = date('Y-m-d');	

$query = mysqli_query($connect, "insert into topic set alum = '$alum', topic = '$topic', date = '$date'");
	
header('Location: alumni-dashboard?topic=posted');
exit;	
	
}else{
header('Location: alumni-dashboard?post=error');
exit;	
}

?>