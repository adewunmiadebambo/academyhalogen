<?php
session_start();
include('connect.php');
include('administrator-session.php');
require_once('fns.php');


$album_title = addslashes($_POST['album_title']);


if(!$album_title)
{
	$error = 'All fields must be entered before submitting';
	include('add_album.php');
	exit;
}

$query = "insert into gallery_album set
			album_title = '$album_title'";

		
$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Album has been added successfully';		
	include('add_album.php');
	exit;
}
else
{
	$error = 'Album Cannot be added at this time, please try again';
	include('add_album.php');	
	exit;
}
?>