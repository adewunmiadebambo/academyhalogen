<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$art = base64_decode($_GET['picture']);

$qsPhoto = mysqli_query($connect, "select * from events_page where title = '$art'");
$rsPhoto = mysqli_fetch_assoc($qsPhoto);

$qsPhoto2 = mysqli_query($connect, "select * from events_page where title = '$art'");
$nsPhoto2 = mysqli_num_rows($qsPhoto2);

?>

<!DOCTYPE html>

<html class='no-js'>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>

<meta charset='utf-8'>

<meta content='width=device-width, initial-scale=1.0' name='viewport'>

<title>Events - Academy Halogen</title>

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<!--<link rel="stylesheet" href="dist/css/bootstrap.min.css">-->

<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">



<link rel="icon" href="images/favicon.png" />



<link href="dist/css/simpleLightbox.css" rel="stylesheet" type="text/css" />


</head>

<body>



<?php include('inc/header.php'); ?>

<div id="inner">

<div class="container">

<div class="row">

<div class="col-12">
<h3 align="center"><?php echo $rsPhoto['title']; ?></h3>
</div>

</div>

</div>

</div>

<br><br><br><br><br><br><br><br>
<!--<div id="h_banner">-->

<!--<div class="about" style="background-image: url('acms/pages/<?php echo $rsPhoto['banner_url']; ?>'); background-position:center; height:250px">-->
<!--<div class="about-info">-->
<!--<div class="row">-->
<!--<div class="col-md-7">-->

<!--</div>-->
<!--<div class="col-md-5">-->

<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->


<section class="team-area section-gap" style="margin-bottom: 90px;">

<div class="container">

<div class="row">

<?php for($n=0; $n<$nsPhoto2; $n++){

$rsNew = mysqli_fetch_assoc($qsPhoto2);

?>

<div class="col-md-4 gallery-columns col-xs-12 col-lg-4 col-sm-6 animated wow fadeInUp animated" data-wow-delay=".5s" data-wow-offset="5" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp; margin-bottom:30px;" >

<div class="swaps">
<a title="" href="acms/pages/events/<?php echo $rsNew['banner_url']; ?>">
<div class="" style="background:url('acms/pages/events/<?php echo $rsNew['banner_url'] ?>') no-repeat; background-size:cover; height:200px;"></div>
</a>
</div>

</div>
<?php } ?>
</div>

</div>

</section>







<?php include('inc/footer2.php'); ?>


</body>


<script src="dist/js/bootstrap.min.js"></script>


<!-- js for banner -->

<script src="dist/js/main.js"></script>



<!-- /js for banner -->







<script src="dist/js/owl.carousel.min.js"></script>



<script src="dist/js/wow.min.js"></script>



	<script src="dist/js/simpleLightbox.js"></script>
	<script>
		$('.gallery-columns a').simpleLightbox();
	</script>





</html>
