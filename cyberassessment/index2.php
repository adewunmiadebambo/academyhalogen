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



</style>



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

	
<form role="form" enctype="multipart/form-data" action="proc-setup.php" method="post">
	

<section id="body" style="display: none;" class="animate-bottom">



	<?php include('inc/header.php'); ?>

	

	<div id="assess">

	

		<div class="container assess">

		

			<div class="row">

				

				<div class="col-md-1"></div>

				

				<div class="col-md-10">

															

					<div class="row">

					

						<div class="col-md-2"></div>

					

						<div class="col-md-8">

						

							<h3 style="font-size: 19px;">Enter Your Details Below</h3>

							

							<p></p><br>

							

							<p><?php if($error){ echo '<div class="alert alert-danger"><b>'.$error.'</b></div>'; } ?></p>

							

							<p><?php if($relog){ echo '<div class="alert alert-danger"><b>'.$relog.'</b></div>'; } ?></p>

				

							<?php

							

							if(!$error){

							

								echo('

								

								<div class="col-md-12">

								

							



							

								<div class="form-group">



									<label>First Name</label>



									<input type="text" name="fname" class="form-control" required>



								</div>



								<div class="form-group">



									<label>Last Name</label>



									<input type="text" name="lname" class="form-control" required>



								</div>



								<div class="form-group">



									<label>Gender</label>



									<select name="gender" class="form-control" required>

									

										<option value="">Select Gender</option>

									

										<option value="Male">Male</option>

									

										<option value="Female">Female</option>

									

									</select>



								</div>



								<div class="form-group">



									<label>Email</label>



									<input type="email" name="email" class="form-control" required>



								</div>



								<div class="form-group">



									<label>Phone Number</label>



									<input type="tel" name="phone" class="form-control" required>



								</div>



								

								

									

								

								</div>



							

							

							</div>

							

							

							');

								

							}

								

								?>

							

							

							

							<div class="col-md-12">

							

								<p></p><br>

								

								<div class="col-md-2"></div>

								

								<div class="col-md-8">

								

									<strong>INSTRUCTIONS</strong>: Please read the following instructions carefully before starting



								

									a)	You have 40 minutes to complete this assessment.

								

									<p></p>



									b)	There are 3 sections, namely:

								

									<p></p>

									<div style="margin-left: 25px;">

									a.	<strong>SECTION 1: Numerical Reasoning</strong> – Interpret, analyse and draw logical conclusions based on numerical data presented<br>

								

									b.	<strong>SECTION 2: Verbal reasoning</strong> – sentence completion and sentence correction<br>

								

									c.	<strong>SECTION 3: Abstract Reasoning</strong> – Identify patterns among abstract shapes. <br>



									c)	Select one answer ONLY for each question. 

									</div>

									<p></p>



									d)	If you cannot answer a question, you can move to the next and return to the unanswered one later.

							

									<p></p>



									e)	<strong>Do not</strong> spend too much time on any one question. 

						

									<p></p>

								<br>
									<button type="submit" style="width:100%;">Continue</button>

							</div>

								

								<div class="col-md-2"></div>



								

						

					

							</div>

							

						</div>



							

						

						</div>

					

						<div class="col-md-2"></div>

					

					</div>

					

					

								

				</div>

				

				<div class="col-md-1"></div>

			

			</div>

		

		</div>

	

	</div>

	

	<?php include('inc/footer.php'); ?>

	

</section>

	
</form>
	

</body>

</html>