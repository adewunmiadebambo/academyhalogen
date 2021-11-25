<?php



session_start();

echo $_SESSION['valid_user_phone']; exit;

require_once('connect.php');


function get_extension($file)
{

	$filename = explode('.',$file);	
	$extension = array_reverse($filename);
	return strtolower($extension[0]);
}




//$email = $_POST['email'];
$email = $_SESSION['valid_user'];

$phone = str_replace('+','',$_SESSION['valid_user_phone']);



$video = $_FILES['video']['tmp_name'];

$video_filename = $_FILES['video']['name'];

$ext = get_extension($video_filename);



$os = array('mp4','mov','wmv','flv','3gp','mkv','jpg');

if(!in_array($ext, $os))

   	{

		$error = 'You have uploaded the wrong file format. Please upload MP4 video format';

		include('end-test.php');

		exit;

	}



$dbvideo = $phone.'.'.$ext;



$upfile = 'uploads/'.$dbvideo;


if (move_uploaded_file($video, $upfile)){

$query = "update applicants set video = '$dbvideo' where phone = '$phone'";
	
$result = mysqli_query($connect, $query);

	if($result){


	$correct = 'Thank you for taking the online assessment.
	<br>We will get back to you within the next 10 working days to advise you of the next stage in the selection process.';



	include('end-test.php');	


	}else{



	$error = "An Error Occurred";

	include('end-test.php');

	exit;	



	}



}


?>