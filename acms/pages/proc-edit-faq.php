<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$banner_url = addslashes($_POST['banner_url']);
$keyword = addslashes($_POST['keyword']);
$id = $_POST['id'];


if(!$title || !$content)
{
	$error = 'All information required';
	include ('edit_faq.php');
}


$query = "update faq_page set
			title = '$title',
			content = '$content',
			banner_url = '$banner_url',
			keyword = '$keyword' where id = '$id'";


$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'FAQ has been edited successfully';
	include ('view_faq.php');
}
else
{
	$section = 'Cannot edit FAQ at this time, please try again!';
	include ('edit_faq.php');
}
?>
