<?php
session_start();
include("Connection/connect.php");
require_once('SimpleImage.php');


if(isset($_POST['submitProfile'])){

$sql = mysqli_query($connect, "select * from alumni where email = '{$_SESSION['alumni']}'");
$found = mysqli_num_rows($sql);
$row = mysqli_fetch_assoc($sql);

$client =  $_SESSION['alumni'];
$name  = $_POST['name'];
$phone = $_POST['phone'];
if($_POST['password']){	
$password = $_POST['password'];
}else{
$password = $row['password'];	
}


if($_POST['password'] != $_POST['confirm'])
{
$error = 'Error: Your password and confirmation are not the same';
include('alumni-dashboard.php');
exit;
}


function get_ext($key) { 
$key=strtolower(substr(strrchr($key, "."), 1));
$key=str_replace("jpeg","jpg",$key);
return $key;
}
	
if($found > 0){
	
if(is_uploaded_file($_FILES['image']['tmp_name'])) {

$image = $_FILES['image']['tmp_name'];
$image_part = $_FILES['image']['name'];
	
$folder = "./images/";
$file = $client;
$ext = get_ext($image_part);
	
if($row['passport']){
unlink($folder.$row['passport']); 
}

move_uploaded_file($image,$folder.$file.".".$ext);

$upfile1 = $folder.$file.".".$ext;

$image = new SimpleImage();
$image->load($upfile1);
$image->resizeToWidth(200);
$image->resizeToHeight(200);
$image->save($upfile1);


mysqli_query($connect, "update alumni set name = '$name', phone = '$phone', password = '$password', passport = '$file.$ext' where email = '$client'");	
	
}else{
	
mysqli_query($connect, "update alumni set name = '$name', phone = '$phone', password = '$password' where email = '$client'");
	
}
	
}else{
$error = 'Insertion error please try again';
include('alumni-dashboard.php');
exit;
	
}
}else{

$error = 'Database error please try again';
include('alumni-dashboard.php');
exit;
	
}