<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
// $mp_title = addslashes($_POST['mp_title']);
$banner_text = addslashes($_POST['banner_text']);
$content = addslashes($_POST['content']);
$date = addslashes($_POST['date']);
$time = addslashes($_POST['time']);
$banner_url = addslashes($_POST['banner_url']);
$ext_link = addslashes($_POST['ext_link']);


if(!$title || !$content)
{
	$error = 'All information required';
	include ('add_events.php');
	exit;
}


$query = "insert into events_page set
			title = '$title',
			banner_text = '$banner_text',
			content = '$content',
			date = '$date',
			time = '$time',
			event_type = 'event',
			banner_url = '$banner_url',
			ext_link = '$ext_link'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "$title Added Successfully";
	include ('add_events.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('add_events.php');
	exit;
}
?>
