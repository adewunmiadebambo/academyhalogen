<?php
session_start();
include('connect.php');
include('administrator-session.php');
include('fns.php');

$id = base64_decode($_GET['id']);
$tab = base64_decode($_GET['tab']);
$return_url = base64_decode($_GET['return_url']); 
$filename = base64_decode($_GET['filename']); 
$folder = base64_decode($_GET['folder']); 


	$title = data_val($tab,'id',$id);
	//Log action	
	log_activity($_SESSION['admin_user'], "Deleted $title from $tab");

mysqli_query($connect, "delete from $tab where id = '$id'");

if($filename)
{
	unlink("uploads/$folder/$filename");
}

header("Location: $return_url");

?>