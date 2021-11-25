<?php session_start();

include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$banner_url = addslashes($_POST['banner_url']);
$keyword = addslashes($_POST['keyword']);


if(!$title || !$content)
{
	$error = 'all information is required';
	include ('add_faq.php');
}


$query = "insert into faq_page set 
			title = '$title',
			content = '$content',
			banner_url = '$banner_url',
			keyword = '$keyword'"; 

$result = mysqli_query($connect, $query);
if($result)
{
	$correct = 'A new FAQ has been added successfully';
	include ('add_faq.php');
}
else
{
	$error = 'Cannot add FAQ now, please try again!';
	include ('add_faq.php');
}
?>
