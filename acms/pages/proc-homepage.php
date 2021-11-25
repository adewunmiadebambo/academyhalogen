<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$page_title = addslashes($_POST['page_title']);
$content = addslashes($_POST['content']);
$img_url = addslashes($_POST['img_url']);
$ext_link = addslashes($_POST['ext_link']);


if(!$page_title || !$content)
{
	$error = 'All information required';
	include ('add_homepage.php');
	exit;
}

if($page_title == "Survey Monkey"){

$query = "update home_page set
			title = '$page_title',
			content = '$content',
			image_url = '$img_url',
			ext_link = '$ext_link' where title = '$page_title'"; 
}else{
	
$query = "insert into home_page set
			title = '$page_title',
			content = '$content',
			image_url = '$img_url',
			ext_link = '$ext_link'"; 
	
}

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'Homepage Content Added Successfully';
	include ('add_homepage.php');
}
else
{
	$error = 'Cannot add Homepage Content now, please try again';
	include('add_homepage.php');
	exit;
}
?>
