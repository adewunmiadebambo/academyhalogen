<?php


session_start();


require_once('connect.php');





$fname = mysqli_real_escape_string($connect, $_POST['fname']);


$lname = mysqli_real_escape_string($connect, $_POST['lname']);


$gender = mysqli_real_escape_string($connect, $_POST['gender']);


$email = $_POST['email'];


$phone = $_POST['phone'];


$user = $email;








if(!$fname || !$lname || !$gender || !$email || !$phone )


{


	$error = "All information is required";


	include('index2.php');


	exit;


}





if(!filter_var($email, FILTER_VALIDATE_EMAIL))


{


	$error = "Invalid email address, please check the email you entered.";


	include('index2.php');


	exit;


}








$qsHome = mysqli_query($connect, "select * from applicants where email = '$email' ");


$nsHome = mysqli_num_rows($qsHome);


$row = mysqli_fetch_assoc($qsHome);





$test = mysqli_query($connect, "select * from answers where user_email = '$email'");


$ntest = mysqli_num_rows($test);








$query = "insert into applicants set firstname= '$fname', lastname = '$lname', gender = '$gender', email = '$email', phone = '$phone'; ";





if($nsHome > 0){


	if(is_null($row['video']) and $ntest > 0){


		$email;


		$_SESSION['valid_user'] = $user;


		$correct="Assessment Previously Recorded. Kindly Upload Your Video To Complete The Process";


		$corrett = base64_encode($correct);


		header('Location: thankyou.php?ccr='.$corrett);


	}


	else{


	$error = "This User Has An Existing Application";


	include('index2.php');


	exit;


	}


}


else{


	


	$_SESSION['valid_user'] = $user;
	$_SESSION['valid_user_phone'] = $phone;


	include('assessment.php');


	exit;


}




















?>