<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$mp_title = addslashes($_POST['mp_title']);
$category = addslashes($_POST['category']);
$banner_text = addslashes($_POST['banner_text']);
$keyword = addslashes($_POST['keyword']);
$content = addslashes($_POST['content']);
$date = addslashes($_POST['date']);
$banner_url = addslashes($_POST['banner_url']);
$ext_link = addslashes($_POST['ext_link']);
$link = addslashes($_POST['link']);
$id = addslashes($_POST['id']);


if(!$title)
{
	$error = 'All information required';
	include ('edit_newspage.php');
	exit;
}


$query = "update news_page set
			title = '$title',
			mp_title = '$mp_title',
			category = '$category',
			banner_text = '$banner_text',
			keyword = '$keyword',
			content = '$content',
			date = '$date',
			banner_url = '$banner_url',
			ext_link = '$ext_link', link = '$link' where id = '$id'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = "Changes has been made on $title News Successfully";
	include ('add_news.php');
}
else
{
	$error = "Cannot add $title now, please try again";
	include('edit_newspage.php');
	exit;
}
?>
