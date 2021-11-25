<?php
session_start();
include("Connection/connect.php");

if(isset($_POST['submitComment'])){

$name = mysqli_real_escape_string($connect, $_POST['name']);
$comment = mysqli_real_escape_string($connect, $_POST['comment']);
$topic = mysqli_real_escape_string($connect, $_POST['topic']);
$date = date('Y-m-d');	

$query = mysqli_query($connect, "insert into comments set name = '$name', topic = '$topic', comment = '$comment', date = '$date'");
	
if($query){	
	
header('Location: view-topic?topic='.base64_encode($topic).'&post=sent');
exit;	
}else{
header('Location: view-topic?topic='.base64_encode($topic).'&error=post');
exit;
}
}else{
header('Location: view-topic?topic='.base64_encode($topic).'&error=post');
exit;
}

?>