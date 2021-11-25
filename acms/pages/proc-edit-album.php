<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$album_title = addslashes($_POST['album_title']);
$id = addslashes($_POST['id']);


if(!$album_title)
{
	$error = 'All fields must be entered before submitting';
	include('edit_album.php');
	exit;
}

$query = "update gallery_album set
		  album_title = '$album_title' where id '$id'";

		
$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'OK! Task has been added to database.';		
	include('add_album.php');
	exit;
}
else
{
	$error = 'Error: Somthing went wrong.';
	include('edit_album.php');	
	exit;
}
?>