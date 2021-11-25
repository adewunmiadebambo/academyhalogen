<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$date = date('Y-m-d');

function get_ext($key) { 
$key=strtolower(substr(strrchr($key, "."), 1));
$key=str_replace("jpeg","jpg",$key);
return $key;
}

$image = $_FILES['file']['tmp_name'];
$image_part = $_FILES['file']['name'];
	
$folder = "./policy/";
$file = $title;
$ext = get_ext($image_part);
	
move_uploaded_file($image,$folder.$file.".".$ext);

mysqli_query($connect, "insert into policy set title = '$title', policy = '$file.$ext', date = '$date'");	
	
$correct = 'Policy has been added successfully';		
include('add-policy.php');
exit;

?>