<?php
session_start();
include("Connection/connect.php");

if(isset($_POST['submitAlumni'])){

$name = mysqli_real_escape_string($connect, $_POST['name']);
$matric = mysqli_real_escape_string($connect, $_POST['matric']);
$email = mysqli_real_escape_string($connect, $_POST['email']);
$pass = mysqli_real_escape_string($connect, $_POST['password']);
$phone = mysqli_real_escape_string($connect, $_POST['phone']);
	$sex = mysqli_real_escape_string($connect, $_POST['sex']);
$class = mysqli_real_escape_string($connect, $_POST['class_year']);
$course = mysqli_real_escape_string($connect, $_POST['course']);
$date = date('Y-m-d');	
	
$qsFind = mysqli_query($connect, "select * from alumni where matric = '$matric' && name = '$name' && sex = '$sex' && course = '$course' && class_year = '$class'");
$nsFind = mysqli_num_rows($qsFind);
	
if($nsFind > 0){ 	
$query = mysqli_query($connect, "update alumni set email = '$email', password = '$pass', phone = '$phone', date = '$date'");
	
}else{
$query = mysqli_query($connect, "insert into alumni set matric = '$matric', name = '$name', email = '$email', password = '$pass', phone = '$phone', class_year = '$class', course = '$course', date = '$date'");
}
	
if($query){	
	
$_SESSION['alumni'] = $email;
	
header('Location: alumni-dashboard');
exit;	
}else{
$error = "Database error, please check your inputs and then try again";
include('alum-register.php');
exit;	
}
}else{
$error = "not found";
include('alum-register.php');
exit;
}

?>