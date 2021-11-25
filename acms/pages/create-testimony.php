<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$content = addslashes($_POST['content']);
$link = addslashes($_POST['link']);
$ext_link = addslashes($_POST['ext_link']);

$userfile = $_FILES['userfile']['tmp_name'];
$userfile_name = $_FILES['userfile']['name'];

$size = round(filesize($userfile) / 1024, 0).' KB'; // kilobytes with two digits 



if(!$title || !$content || !$userfile)
{
	$error = 'All information required';
	include ('add_testimonial.php');
	exit;
}


if(checkfile($userfile_name, 'pics') == 'error')
{
	$error = "The image you are uploading must be an image";
	include('add_testimonial.php');
	exit;	
}


$query = "insert into testimonial set
			title = '$title',
			content = '$content',
			link = '$link',
			ext_link = '$ext_link'"; 


$result = mysqli_query($connect, $query);
if($result)
{
	$query2 = "select * from testimonial order by id desc";
	$result2 = mysqli_query($connect, $query2);
	$row2 = mysqli_fetch_array($result2);
	$id = $row2['id'];
	$title2 = $row2['title'];
	
	$ext = get_extension($userfile_name);
	$dbImage = 'Testimonial_'.$title2.'.'.$ext;
	$upfile = 'uploads/'.$dbImage;

    move_uploaded_file($userfile, $upfile);
	
	$query = "insert into image_manager set title = '$title', filename = '$dbImage', file_size = '$size'"; 
	$result = mysqli_query($connect, $query);
	
	$query = "update testimonial set image_url = '$dbImage' where id = '$id'";
	$result = mysqli_query($connect, $query);
	
	$correct = 'Testimonial Added Successfully';
	include ('add_testimonial.php');
}
else
{
	$error = 'Cannot add testimonial now, please try again';
	include('add_testimonial.php');
	exit;
}
?>
