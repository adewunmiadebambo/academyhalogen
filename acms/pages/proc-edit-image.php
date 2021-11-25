<?php
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');


$title = addslashes($_POST['title']);
$userfile = $_FILES['userfile']['tmp_name'];
$userfile_name = $_FILES['userfile']['name'];

$id = $_POST['id'];

$size = round(filesize($userfile) / 1024, 0).' KB'; // kilobytes with two digits 


if(!$title)
{
	$error = "All information is required!";
	include('edit_image.php');
}


if($userfile)
{
	if(checkfile($userfile_name, 'pics') == 'error')
	{
		$error = "The image you are uploading must be a JPG";
		include('edit_image.php');
		exit;	
	}
}




$query = "update image_manager set title = '$title' where id = '$id'"; 
$result = mysqli_query($connect, $query);
if($result)
{
	if($userfile)
	{
		$ext = get_extension($userfile_name);
		$dbImage = $title.'.'.$ext;

		$upfile = 'uploads/'.$dbImage;
		if(move_uploaded_file($userfile, $upfile))
		{
			$query = "update image_manager set filename = '$dbImage', file_size = '$size' where id = '$id'";
			$result = mysqli_query($connect, $query);
			if($result)
			{
				$correct = 'Image has been edited successfully';
				include ('add_image.php');
				exit;
			}else
			{
				$error = "Image not uploaded, please check the image size!";
				include('edit_image.php');
				exit;	
			}
		}
	}

	$correct = 'Picture has been edited successfully';
	include ('add_image.php');
	exit;
}
else
{
$error = "Cannot upload image now, please try again!";
include('edit_image.php');
exit;	
}
?>
