<?php


session_start();





require_once('connect.php');





$email = $_SESSION['valid_user'];





$query = $_POST['query'];





$ans1 = $_POST['answer1'];





$ans2 = $_POST['answer2'];





$ans3 = $_POST['answer3'];





$ans4 = $_POST['answer4'];





$ans5 = $_POST['answer5'];





$ans6 = $_POST['answer6'];





$ans7 = $_POST['answer7'];





$ans8 = $_POST['answer8'];





$ans9 = $_POST['answer9'];





$ans10 = $_POST['answer10'];





$ans11 = $_POST['answer11'];





$ans12 = $_POST['answer12'];





$ans13 = $_POST['answer13'];





$ans14 = $_POST['answer14'];





$ans15 = $_POST['answer15'];





$ans16 = $_POST['answer16'];





$ans17 = $_POST['answer17'];





$ans18 = $_POST['answer18'];





$ans19 = $_POST['answer19'];





$ans20 = $_POST['answer20'];











/*if(!$ans1 || !$ans2 || !$ans3 || !$ans4 || !$ans5 || !$ans6 || !$ans7 || !$ans8 || !$ans9 || !$ans10 || !$ans11 || !$ans12 || !$ans13 || !$ans14 || !$ans15 || !$ans16 || !$ans17 || !$ans18 || !$ans19 || !$ans20 || !$query){


	$error = "All Questions Must Be Answered Before Submitting";


	include('assessment.php');


	exit;


}*/





$query2 = "insert into answers set user_email = '$email', ans1 = '$ans1', ans2 = '$ans2', ans3 = '$ans3', ans4 = '$ans4', ans5 = '$ans5', ans6 = '$ans6', ans7 = '$ans7', ans8 = '$ans8', ans9 = '$ans9', ans10 = '$ans10', ans11 = '$ans11', ans12 = '$ans12', ans13 = '$ans13', ans14 = '$ans14', ans15 = '$ans15', ans16 = '$ans16', ans17 = '$ans17', ans18 = '$ans18', ans19 = '$ans19', ans20 = '$ans20'; ";



$execute  = mysqli_query($connect, $query);

$execute2  =  mysqli_query($connect, $query2);





if($execute && $execute2){


	


	header('Location: thankyou.php?ccr='.$corrett);


	exit;


}


else{


	$error = "An Error Occured";


	include('assessment.php');


	echo($query2);


	exit;


}








?>