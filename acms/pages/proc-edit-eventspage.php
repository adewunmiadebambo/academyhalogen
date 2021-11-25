<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$mp_title = addslashes($_POST['mp_title']);
$banner_text = addslashes($_POST['banner_text']);
$keyword = addslashes($_POST['keyword']);
$content = addslashes($_POST['content']);
$date = addslashes($_POST['date']);
$time = addslashes($_POST['time']);
$banner_url = addslashes($_POST['banner_url']);
$ext_link = addslashes($_POST['ext_link']);
$id = addslashes($_POST['id']);


if(!$title || !$content || !$banner_text)
{
	$error = 'All information required';
	include ('edit_eventspage.php');
	exit;
}


$query = "update events_page set
			title = '$title',
			mp_title = '$mp_title',
			banner_text = '$banner_text',
			content = '$content',
			date = '$date',
			time = '$time',
			banner_url = '$banner_url',
			ext_link = '$ext_link' where id = '$id'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Changes has been made on $title News Successfully";
	include ('add_events.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('edit_eventspage.php');
	exit;
}
?>
