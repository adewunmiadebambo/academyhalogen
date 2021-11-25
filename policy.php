<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$qsProg = mysqli_query($connect, "select * from master_page where title = 'Policy'");
$rsProg = mysqli_fetch_assoc($qsProg);

$qsCourse = mysqli_query($connect, "select * from policy order by id desc");
$nsCourse = mysqli_num_rows($qsCourse);

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Policy - Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">

	

<link rel="stylesheet" media="all" href="assets/lrdx-77c4f7a2ed2823479709cb56e8fe2d919736c8fe4b9bb7455ce7ab3201d6c28f.css" />


</head>
<body>


<?php include('inc/header.php'); ?>




<div id="h_banner">

<div class="about" style="background-image: url('acms/pages/<?php echo $rsProg['banner_url']; ?>');">
<div class="about-info">
<div class="row">
<div class="col-md-7">

</div>
<div class="col-md-5">
<div class='custom-about'>
<h3><?php echo $rsProg['title']; ?></h3>
</div>
</div>
</div>
</div>
</div>
</div>






<div id="services" style="padding: 20px;">
<div class="container">


<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10 text-center">
<br><br>
<?php echo $rsProg['content']; ?></strong>
<br><br>
<br><br>
</div>
<div class="col-md-1"></div>
</div>
</div>


<?php if($nsCourse > 0){ ?>

<div id="acc_info" style="top: -60px;">
<div class="container">
<div class="row">       
<?php for($i=0; $i<$nsCourse; $i++){ 
$rsCourse = mysqli_fetch_assoc($qsCourse);
?>
<div class="col-md-6">
<a href="download-policy?f=<?php echo $rsCourse['policy']; ?>">
<div class="btn btn-default button-white center-block" style="width: 90%;">
<?php echo $rsCourse['title'] ?>
</div>
</a>
</div>
<?php } ?>	
</div>
</div>
</div>
<?php } ?>
	
</div>

<?php include('inc/footer2.php'); ?>









<!-- Slider-JavaScript -->
<script src="dist/js/responsiveslides.min.js"></script>
<script>
$(function () {
$("#slider4").responsiveSlides({
auto: true,
pager: true,
nav: true,
speed: 1000,
namespace: "callbacks",
before: function () {
$('.events').append("<li>before event fired.</li>");
},
after: function () {
$('.events').append("<li>after event fired.</li>");
}
});
});
</script>
<!-- //Slider-JavaScript -->

<script src="dist/js/bootstrap.min.js"></script>

<script src="dist/js/owl.carousel.min.js"></script>
<script src="dist/js/wow.min.js"></script>
<script src="dist/js/main.js"></script>
</body>
</html>