<?php

session_start();

if(!isset($_SESSION['valid_user']))

{

	$relog = 'Kindly Fill In Your Details To Begin The Assessment';

	include('index2.php');

	exit;

}




?>

<!doctype html>

<html>

<head>

<meta charset="utf-8">

	

<title>Academy Halogen Assessment</title>



<meta name="viewport" content="width=device-width, initial-scale=1">



<link rel="stylesheet" href="dist/css/bootstrap.min.css">

	

<link rel="stylesheet" href="dist/css/bootstrap.css">



<script src="dist/js/jquery-2.2.js"></script>



<script src="dist/js/bootstrap.min.js"></script>



<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">



<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">



<link rel="icon" href="images/favicon.ico" />



<link href="dist/css/animate.css" rel="stylesheet">



<link href="dist/css/owl.carousel.css" rel="stylesheet">



<link href="dist/css/owl.transitions.css" rel="stylesheet">



<link href="dist/css/owl.theme.css" rel="stylesheet">

	

<script src="dist/js/owl.carousel.js"></script>

	

<script src="dist/js/owl.carousel.min.js"></script>



<!-- Main Stylesheet -->



<link href="dist/css/flexslider.css" rel="stylesheet">



<link href="dist/css/media-queries.css" rel="stylesheet">



<link href="dist/css/nivo-slider.css" rel="stylesheet">	



<script src="dist/js/smoothscroll.js"></script>

	

<script src="my-js.js"></script>

	

<style>

.loader {

  border: 8px solid #f3f3f3;

  border-radius: 50%;

  border-top: 10px solid #071A45;

  border-bottom: 10px solid #071A45;

  width: 120px;

  height: 120px;

  -webkit-animation: spin 1s linear infinite; /* Safari */

  animation: spin 1s linear infinite;

}



/* Safari */

@-webkit-keyframes spin {

  0% { -webkit-transform: rotate(0deg); }

  100% { -webkit-transform: rotate(360deg); }

}



@keyframes spin {

  0% { transform: rotate(0deg); }

  100% { transform: rotate(360deg); }

}

	

.animate-bottom {

  position: relative;

  -webkit-animation-name: animatebottom;

  -webkit-animation-duration: 1s;

  animation-name: animatebottom;

  animation-duration: 1s

}



@-webkit-keyframes animatebottom {

  from { bottom:50px; opacity:0 } 

  to { bottom:0px; opacity:1 }

}



@keyframes animatebottom { 

  from{ bottom:50px; opacity:0 } 

  to{ bottom:0; opacity:1 }

}



	#body{

		height: 130vh;

	}

	

	.assess .col-md-10 {

		height: 109vh;

	}

	

	

	input[type=radio] {

		  

		-webkit-transform: scale(1.5);

}

	

	

</style>

	

	<script type="text/javascript">

            function startTimer(duration, display) {

    var timer = duration, minutes, seconds;

    setInterval(function () {

        minutes = parseInt(timer / 60, 10);

        seconds = parseInt(timer % 60, 10);



        minutes = minutes < 10 ? "0" + minutes : minutes;

        seconds = seconds < 10 ? "0" + seconds : seconds;



        display.text(minutes + ":" + seconds);



        if (--timer < 0) {

			document.quiz.submit();

           // timer = duration;

        }

    }, 1000);

}



jQuery(function ($) {

    var fiveMinutes = 2400,

        display = $('#time');

    startTimer(fiveMinutes, display);

});

            </script>



</head>

	

<body onload="myFunction()">

	

<script>

	var myVar;



	function myFunction() {

	  myVar = setTimeout(showPage, 1000);

	}



	function showPage() {

	  document.getElementById("loader").style.display = "none";

	  document.getElementById("body").style.display = "block";

	}

</script>

	

	

	

<div id="loader">



	<div class="loader col-md-4" align="center"></div>

	

</div>

	

<section id="body" style="display: none;" class="animate-bottom">



	<?php include('inc/header.php'); ?>

	

	<div id="assess">

	

		<div class="container assess">

		

			<div class="row">

				

				<div class="col-md-1"></div>

				

				<div class="col-md-10">

					

					<div class="row">

					

						<div class="col-md-3"></div>

					

						<div class="col-md-6">

							<div style="font-size: 25px; font-weight: bold; color: #FF0000;"><span id="time"></span>  remaining  </div>

							

							Answer All Questions  

						

						<br>

							

						

						</div>

					

						<div class="col-md-3"></div>

					

					</div>

					

					<div class="row">

					

						<div class="col-md-3"></div>

					

						<div class="col-md-6">

							

							<p><?php if($error){ echo '<div class="alert alert-danger"><b>'.$error.'</b></div>'; } ?></p>

							

							<form name="quiz" id="myquiz" role="form" enctype="multipart/form-data" method="post" action="submit.php">

								

								<input type="hidden" value="<?php echo($query); ?>" name="query">

								

								<div id="section1" class="qq">

									

									<br>

			

							<h1 style="text-align: left">Begin Test</h1>

								

									<h4>Numerical Reasoning</h4> 

									

									<p></p><br>

									

									Interpret, analyse and draw logical conclusions based on numerical data presented

									

									<button type="button" class="nextbtn" id="sect1">Next <i class="fa fa-chevron-right"></i></button>

									

									<p></p><br>

								

								</div>

						

								<div id="question1" class="qq">



									<h4> Question 1.<br><br>A bakery opened yesterday with its daily supply of 40 dozen rolls. Half of the rolls were sold by noon, and 80 percent of the remaining rolls were sold between noon and closing time. How many dozen rolls had not been sold when the bakery closed yesterday?</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer1"  > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											1

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer1" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											2

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer1" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											3

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer1" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											4

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer1" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											5

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="start">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

									

									<div class="col-md-6">

										

										

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question2" class="qq">



									<h4> Question 2.<br><br>Tony is now 14 years older than Ahmed. If in 10 years Tony will be twice as old as Ahmed, how old will Tony be in 5 years?</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer2" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											9

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer2" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											19

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer2" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											21

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer2" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											23

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer2" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											33

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back2"><i class="fa fa-chevron-left"></i> Back </button>

										

										

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next2">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

														

								<div id="question3" class="qq">



									<h4> Question 3.<br><br>Of 30 applicants for a job, 14 had at least 4 years’ experience, 18 had degrees, and 3 had less than 4 years’ experience and did not have a degree. How many of the applicants had at least 4 years’ experience and a degree?</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer3" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											14

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer3" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											13

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer3" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											9

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer3" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											7

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer3" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											5

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back3"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next3">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question4" class="qq">



									<h4> Question 4.<br><br>There are 40 children in class. 16 of them are girls. How many percent more boys than girls are there?</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer4" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											20%

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer4" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											30%

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer4" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											50%

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer4" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											70%

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer4" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											80%

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back4"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next4">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question5" class="qq">



									<h4> Question 5.<br><br>Every month Zen gives 65% of her salary to her mother. She spends 15% of her salary and saves the remainder. She saves N130 more than what she spends. What is her monthly salary? </h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer5" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											N 2,600

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer5" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											N 2,450

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer5" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											N 2,200

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer5" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											N 2,050

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer5" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											N 2,150

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back5"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next5">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question6" class="qq">



									<h4> Question 6.<br><br>What number must be added to 6, 16 and 8 to get an average of 13? </h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer6" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											17

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer6" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											25

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer6" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											20

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer6" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											18

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer6" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											22

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back6"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next6">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question7" class="qq">



									<h4> Question 7.<br><br>Find the missing number in the following series:  5184, 1728, 576, 192, ? </h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer7" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											32

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer7" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											44

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer7" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											64

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer7" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											120

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer7" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											224

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back7"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="sect2">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

								

								<div id="section2" class="qq">

								

									<div class="row">

									

										<h4>SECTION 2: VERBAL REASONING</h4>

										

										INSTRUCTION: Replace the underline phrase to make the sentence grammatically correct

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back8"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next7">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>

									

								</div>

						

								<div id="question8" class="qq">



									<h4> Question 8.<br><br>Although a surge in retail sales <u>have raised hopes that there is a recovery finally</u> under way, many economists say that without a large amount of spending the recovery might not last.</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer8" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											have raised hopes that there is a recovery finally

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer8" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											finally raised hopes of a recovery 

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer8" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											had raised hopes for a recovery finally being

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer8" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											has raised hopes that a recovery is finally

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="answer"  name="answer8" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											raised hopes for a recovery finally

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="sect22"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next8">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question9" class="qq">



									<h4> Question 9.<br><br>Diabetes, together with its serious complications, <u>ranks as the nation’s third leading cause of death, surpassed only</u> by heart disease and cancer.</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer9" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											ranks as the nation’s third leading cause of death, surpassed only

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer9" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											rank as the nation’s third leading cause of death, only surpassed

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer9" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											has the rank of the nation’s third leading cause of death, only surpassed

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer9" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											are the nation’s third leading causes of death, surpassed only

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer9" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											have been ranked as the nation’s third leading causes of death, only surpassed

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back9"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next9">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question10" class="qq">



									<h4> Question 10.<br><br>Rising inventories,<u> when unaccompanied correspondingly by increases in sales, can lead</u> to production cutbacks that would hamper economic growth.</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer10" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											when unaccompanied correspondingly by increases in sales, can lead

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer10" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											when not accompanied by corresponding increases in sales, possibly leads

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer10" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											when they were unaccompanied by corresponding sales increases, can lead

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer10" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											if not accompanied by correspondingly increased sales, possibly leads

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer10" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											if not accompanied by corresponding increases in sales, can lead

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back10"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next10">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

								

								<div id="instr1" class="qq">

								

									<div class="row">

									

										<h4>Instructions for Q11 - Q14</h4>

										

										Choose the word which is most nearly the SAME in meaning as the word given

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back11"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="innext">Next <i class="fa fa-chevron-right"></i></button>

																			

									</div>

										

									</div>

									

									<p></p><br>

								

								</div>

						

								<div id="question11" class="qq">



									<h4> Question 11.<br><br>Formulate</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer11" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Frame



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer11" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Apply



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer11" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Contemplate



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer11" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Regularize



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer11" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Debate

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="sec11"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next11">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question12" class="qq">



									<h4> Question 12.<br><br>Viable</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer12" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Rudimentary





										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer12" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Practical



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer12" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Negative



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer12" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Impossible



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer12" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Probable

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back12"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next12">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question13" class="qq">



									<h4> Question 13.<br><br>CANNY</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer13" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Obstinate



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer13" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Handsome 



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer13" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Clever 



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer13" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Stout 



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer13" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Wicked

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back13"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next13">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question14" class="qq">



									<h4> Question 14.<br><br>AUGUST</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer14" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Common





										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer14" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Ridiculous 



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer14" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Dignified 



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer14" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Petty



										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer14" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											Useful 

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back14"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="sect3">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

								

								<div id="section3" class="qq">

								

									<div class="row">

									

										<h4>SECTION 3: ABSTRACT REASONING</h4>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="sectreturn"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next14">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>

								

								</div>

						

								<div id="question15" class="qq">



									<h4> Question 15.<br><br>Which figure is next in the series?<img src="images/abs1.jpg"></h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer15" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer15" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer15" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer15" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back15"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next15">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question16" class="qq">



									<h4> Question 16.<br><br>Which figure belongs in neither group? <img src="images/abs2.jpg"></h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer16" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer16" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer16" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer16" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back16"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next16">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question17" class="qq">



									<h4> Question 17.<br><br>Which figure completes the series? <img src="images/abs3.jpg"></h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer17" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer17" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer17" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer17" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back17"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next17">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question18" class="qq">



									<h4> Question 18.<br><br>Which figure is the odd one out?<img src="images/abs4.jpg"></h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer18" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer18" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer18" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer18" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer18" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											E

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back18"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next18">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question19" class="qq">



									<h4> Question 19.<br><br>Which figure completes the series? <img src="images/abs5.jpg"></h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer19" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer19" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer19" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer19" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back19"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next19">Next <i class="fa fa-chevron-right"></i></button>

									

									</div>

										

									</div>

									

									<p></p><br>



								</div>

						

								<div id="question20" class="qq">



									<h4> Question 20.<br><br>Which figure is the odd one out? <img src="images/abs6.jpg"</h4>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="A"  name="answer20" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											A

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="B"  name="answer20" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											B

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="C"  name="answer20" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											C

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="D"  name="answer20" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											D

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

										

										<div class="col-md-1" style="float: left">

											

											<input type = "radio" value="E"  name="answer20" > 

										

										</div>

										

										<div class="col-md-9" style="float: left; margin-left: -10px;">

											

											E

										

										</div>

										

										<br>

									

									</div>

									

									<div class="row">

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="back20"><i class="fa fa-chevron-left"></i> Back</button>

									

									</div>

									

									<div class="col-md-6">

										

										<button type="button" class="nextbtn" id="next20">Submit <i class="fa fa-chevron-right"></i></button>

									

									</div>

									

									

										

									</div>

									

									<p></p><br>



								</div>

								

								<div id="questionend" class="qq">

										

										<button style="width: 100%; margin-top: 240px;" type="submit" class="nextbtn">End Test <i class="fa fa-chevron-right"></i></button>

								

								</div>

						

							</form>

						

						</div>

					

						<div class="col-md-3"></div>

					

					</div>

				

				</div>

				

				<div class="col-md-1"></div>

			

			</div>

		

		</div>

	

	</div>

	

	<?php include('inc/footer.php'); ?>

	

</section>

	

	

</body>

</html>