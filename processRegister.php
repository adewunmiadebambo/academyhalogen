<?php
include('acms/pages/connect.php');

$name = mysqli_real_escape_string($connect, $_POST['name']);
$email = mysqli_real_escape_string($connect, $_POST['email']);
$phone = mysqli_real_escape_string($connect, $_POST['phone']);
$course = mysqli_real_escape_string($connect, $_POST['course']);
$org = mysqli_real_escape_string($connect, $_POST['organization']);
$posi = mysqli_real_escape_string($connect, $_POST['position']);
$date  = date('Y-m-d');

$qsIns = mysqli_query($connect, "insert into prospect set name = '$name', email = '$email', phone= '$phone', course = '$course', organization = '$org', position = '$posi', date = '$date'");

if($qsIns){

header('Location: apply?reg=yes&toke='.base64_encode($course);

}

?>
