<?php
session_start();
ob_start();
include("connect.php");
require_once('SimpleImage.php');

$head1 = mysqli_real_escape_string($connect, $_POST['head1']);
$head5 = mysqli_real_escape_string($connect, $_POST['head5']);
$sum = mysqli_real_escape_string($connect, $_POST['summary']);
$sub = mysqli_real_escape_string($connect, $_POST['sub']);
$recent = mysqli_real_escape_string($connect, $_POST['recent']);
$recentSum = mysqli_real_escape_string($connect, $_POST['recentSum']);
$prev = mysqli_real_escape_string($connect, $_POST['prev']);
$prevSum = mysqli_real_escape_string($connect, $_POST['prevSum']);
$creator = mysqli_real_escape_string($connect, $_POST['creator']);
$creSum = mysqli_real_escape_string($connect, $_POST['creatorSum']);
$act = mysqli_real_escape_string($connect, $_POST['callAct']);

function get_ext($key) { 
$key=strtolower(substr(strrchr($key, "."), 1));
$key=str_replace("jpeg","jpg",$key);
return $key;
}

if(is_uploaded_file($_FILES['logo']['tmp_name'])) {


$sign = $_FILES['logo']['tmp_name'];
$sign_part = $_FILES['logo']['name'];

$folder = "../homepage/";
$file = time()+rand(0,10000000);
$ext = get_ext($sign_part);

move_uploaded_file($sign,$folder.$file.".".$ext);


mysqli_query($connect, "update homepage set logo ='$file.$ext', head1 = '$head1', head5 = '$head5', summary = '$sum', sub = '$sub', recent = '$recent', recentSum = '$recentSum', prev = '$prev', prevSum = '$prevSum', creator = '$creator', creatorSum = '$creSum', callAct = '$act' where id = '1'");

}

if(is_uploaded_file($_FILES['image']['tmp_name'])) {


$sign = $_FILES['image']['tmp_name'];
$sign_part = $_FILES['image']['name'];

$folder = "../homepage/";
$file = time()+rand(0,10000000);
$ext = get_ext($sign_part);

move_uploaded_file($sign,$folder.$file.".".$ext);
	
$upfile1 = $folder.$file.".".$ext;

$image = new SimpleImage();
$image->load($upfile1);
$image->resizeToWidth(1280);
$image->resizeToHeight(635);
$image->save($upfile1);


mysqli_query($connect, "update homepage set banner ='$file.$ext', head1 = '$head1', head5 = '$head5', summary = '$sum', sub = '$sub', recent = '$recent', recentSum = '$recentSum', prev = '$prev', prevSum = '$prevSum', creator = '$creator', creatorSum = '$creSum', callAct = '$act' where id = '1'");

}


if(!is_uploaded_file($_FILES['image']['tmp_name']) && (!is_uploaded_file($_FILES['logo']['tmp_name']))) {
	
mysqli_query($connect, "update homepage set head1 = '$head1', head5 = '$head5', summary = '$sum', sub = '$sub', recent = '$recent', recentSum = '$recentSum', prev = '$prev', prevSum = '$prevSum', creator = '$creator', creatorSum = '$creSum', callAct = '$act' where id = '1'");	
}

header('Location: homepage?msg=yes');

?>

