<?php
session_start();
ob_start();
include("connect.php");
require_once('SimpleImage.php');

$title = mysqli_real_escape_string($connect, $_POST['title']);
$id = $_POST['id'];
$folder = "../../../wp-content/gallery/";

if($_POST['delete']){ 
	
$qsFetch = 	mysqli_query($connect, "select * from gallery where id = '$id'");
$rsFetch = mysqli_fetch_assoc($qsFetch);	

if($rsFetch['picture']){
unlink($folder.$rsFetch['picture']); }

mysqli_query($connect, "delete from gallery where id = '$id'");
header('Location: gallery?delete=yes&edit='.$id);
exit;
}

function get_ext($key) { 
$key=strtolower(substr(strrchr($key, "."), 1));
$key=str_replace("jpeg","jpg",$key);
return $key;
}

if(is_uploaded_file($_FILES['image']['tmp_name'])) {


$sign = $_FILES['image']['tmp_name'];
$sign_part = $_FILES['image']['name'];

$folder = "../../../wp-content/gallery/";
$file = time()+rand(0,10000000);
$ext = get_ext($sign_part);

move_uploaded_file($sign,$folder.$file.".".$ext);

}else{

mysqli_query($connect, "update gallery set title = '$title' where id = '$id'");

}

$qs = mysqli_query($connect, "select * from gallery where id = '$id'");
$ns = mysqli_num_rows($qs);
$rs = mysqli_fetch_assoc($qs);

if($ns > 0){

if($_FILES['image']['tmp_name']) {

if($rs['picture']){
unlink($folder.$rs['picture']); }

mysqli_query($connect, "update gallery set title = '$title', picture='$file.$ext' where id = '$id'");

}

}

header('Location: gallery?msg=yes&edit='.$id);


?>

