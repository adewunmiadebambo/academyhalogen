<?php



session_start();







$email = $_SESSION['valid_user'];







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



		height: 100vh;



	}



	



	.assess .col-md-10 {



		height: 85vh;



	}







</style>



<script>

$(function() {



	

	$('#btn_video').click(function(){

		$('#loading_video').show();

	});

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



		



			<div class="col-md-1"></div>



		



			<div class="col-md-10">



			



			



				



				<div class="row">



				



					<div class="col-md-3"></div>



				



					<div class="col-md-6">



						



						<p><?php if($error){ echo '<div class="alert alert-danger"><b>'.$error.'</b></div>'; } ?></p>



						



						<p><?php if($correct){ echo '<div class="alert alert-success"><b>'.$correct.'</b></div>'; } ?></p>



						



						<p><?php if($corrett){ echo '<div class="alert alert-success"><b>'.$corrett.'</b></div>'; } ?></p>



						



						<p><?php if($checkup){ echo '<div class="alert alert-success"><b>'.$checkup.'</b></div>'; } ?></p>



						<?php



						



						$corrett = base64_decode($_GET['ccr']);



						



						if($corrett){



							echo('<div class="alert alert-success"><b>'.$corrett.'</b></div>');



						}



						



						



						?>



						



						<?php



						



						if($correct){



							echo('');



						}



						else{



							echo('<form role="form" enctype="multipart/form-data" method="post" action="proc-end.php">



				



							<input type="file" name="video" required class="form-control">



							




					



							<button style="width: 100%;" type="submit" id="btn_video">Submit</button>



				



						</form>');



						}



						



						?>



						<div id="loading_video"><br><br><img src="images/ajax_loader.gif"> Please hold on; this might take some few moments...</div>					



					</div>



				



					<div class="col-md-3"></div>



				



				</div>



				



				



			



			</div>



		



			<div class="col-md-1"></div>



		



		</div>



	



	</div>



	



	<?php include('inc/footer.php'); ?>



	



</section>



</body>



</html>