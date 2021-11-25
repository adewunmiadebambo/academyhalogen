<?php
include('acms/pages/connect.php');

$ip = getenv("REMOTE_ADDR");
$name = mysqli_real_escape_string($connect, $_POST['name']);
$email = mysqli_real_escape_string($connect, $_POST['email']);
$phone = mysqli_real_escape_string($connect, $_POST['phone']);
$art = mysqli_real_escape_string($connect, $_POST['article']);
$event = mysqli_real_escape_string($connect, $_POST['event']);
$date  = date('Y-m-d');

$qsIns = mysqli_query($connect, "insert into eventreg set name = '$name', email = '$email', phone= '$phone', event = '$event', ip = '$ip', date = '$date'");

if($qsIns){

header('Location: view-event?article='.$art);	

}

?>