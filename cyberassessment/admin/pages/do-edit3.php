<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');




$id = $_POST['id'];
$event_name = $_POST['event_name'];
$banner_img = $_POST['banner_img'];
$content = $_POST['content'];



if(!$event_name || !$content)
{
	$error = 'All information required';
	include ('add-event.php');
	exit;
}


$query = "update events set
			event_name = '$event_name',
			banner_img = '$banner_img',
			content = '$content' where id = '$id'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Changes has been made on $title Page Successfully";
	include ('add-event.php');
}
else
{
	$error = "An error occured";
	include('add-event.php');
	exit;
}




?>