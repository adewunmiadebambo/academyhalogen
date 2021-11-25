<?php

include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$get = mysqli_real_escape_string($connect, multiexplode(array("/","/"),$_SERVER['REQUEST_URI'],'courses'));

$val = str_replace('-',' ',$get);

$qsCour = mysqli_query($connect, "select * from courses where mp_title = '$val'");
$nsCour = mysqli_num_rows($qsCour);

$qsProg = mysqli_query($connect, "select * from programs where title = '$val'");
$rsProg = mysqli_fetch_assoc($qsProg);

?>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Training Programmes - Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="../dist/css/bootstrap.css">
<script src="../dist/js/jquery-2.2.js"></script>
<link href="../dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="../dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="../images/favicon.png" />


<link href="../dist/css/animate.css" rel="stylesheet">
<link href="../dist/css/owl.carousel.css" rel="stylesheet">
<link href="../dist/css/owl.transitions.css" rel="stylesheet">
<link href="../dist/css/owl.theme.css" rel="stylesheet">



<link rel="stylesheet" media="all" href="../assets/lrdx-77c4f7a2ed2823479709cb56e8fe2d919736c8fe4b9bb7455ce7ab3201d6c28f.css" />

<style media="screen">
  body{background:none}
  

.home-main{
background: #5812c5;
color:#fff;
padding: 7%;
text-align: center;
}
.blinker{
animation: blinker 1.5s linear infinite;
}
@keyframes blinker {
50% {
opacity: 0;
}
}
.home-main button{
background: #fff;
color: #5812c5;
border-radius: 0;
font-weight: 700;
width: 16%;
height: 50px;
top: 4%;
margin-top: 3%;
}
.home-main button:hover{
transition: 1s ease;
color:#5812c5;
width: 19%;
}
.content1-left{
padding:7%;
}
.content1-right{
padding:7%;
background:#fafafa;
}
.home-content2{
background: #adb5bd;
padding: 1.4%;
text-align: center;	
}
.home-content2 p{
font-size: 18px;
line-height: 50px;
}
.home-content2 p span{
font-weight: 500;
}
</style>

</head>
<body>


<?php include('inc/header2.php'); ?>

<?php if($val == "MBA in Security Management"){ ?>
<section>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
<div class="carousel-inner">
<div class="carousel-item active">
<img src="../acms/pages/<?php echo $rsProg['banner_url']; ?>" class="d-block w-100" alt="...">
</div>
</div>
</div>
</section>
<?php } ?>

<div id="inner">

<div class="container">

<div class="row">

<div class="col-12 text-center">
<br>
<h3><?php echo $val; ?></h3>

</div>

</div>

</div>

</div>


<div id="home2">
    
<?php if($val == "MBA in Security Management"){ ?>

	<?php echo $rsProg['content']; ?>

<?php }elseif($val == "Cybersecurity HUB"){ ?>

	<?php echo $rsProg['content']; ?>

<?php }elseif($val == "Cybersecurity Internship"){ ?>

	<?php echo $rsProg['content']; ?>

<?php }else{ ?>

<div class="container">

<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
	<br><br>
	<?php echo $rsProg['content']; ?></strong>

	<br><br>
	<br><br>

</div>
<div class="col-md-1"></div>

</div>
</div>
<?php } ?>

<?php if($val == "MBA in Security Management" || $val == "Cybersecurity Internship"){ ?>
<br>
	<p align="center">
<a  href="../apply?token=<?php echo base64_encode($val); ?>&course=<?php echo base64_encode($val); ?>"><button class="btn btn-default" style="background:#0B2248;color:#fff">Apply Now!</button></a></p>

<?php }elseif($val == "Cybersecurity HUB"){ ?>
<br>
	<p align="center">
<a href="https://cutt.ly/aj7RPhk" target="_blank"><button class="btn btn-default" style="background:#0B2248;color:#fff">Apply Now!</button></a></p>
<?php
}
?>



<?php if($nsCour > 0){ ?>

<div id="acc_info">
<div class="container">
<div class="row">
<?php for($i=0; $i<$nsCour; $i++){
$rsCour = mysqli_fetch_assoc($qsCour);
?>
<div class="col-md-4" style="margin-bottom:30px;">
<div style="background:url('../acms/pages/<?php echo $rsCour['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:120px;"></div>

<div class="details   grid_course">

<div class="content">

<h6><?php echo $rsCour['title'] ?></h6>

</div>

<div class="duration">

<div class="row">

<div class="col-md-9" style="padding-left:15px; margin-top:-15px;">
<?php if($rsCour['days']){ ?>
<span><i class="fa fa-clock-o"></i> <?php echo $rsCour['days'] ?></span><br>
<?php } ?>
<?php if($rsCour['price']){ ?>
<span><i class="fa fa-money"></i> <?php echo $rsCour['price'] ?></span><br>
<?php } ?>
<?php if($rsCour['location']){ ?>
<span><i class="fa fa-map-marker"></i> <?php echo $rsCour['location'] ?></span>
<?php } ?>
</div>

<div class="col-md-3" style="padding-right:15px" align="right"><a href="../courses-details/<?php echo str_replace(' ','-',$rsCour['title']); ?>"><button class="btn1">Learn more!</button></a></div>

</div>

</div>

</div>

</div>
<?php } ?>
</div>
</div>
</div>
<?php } ?>

</div>


<?php include('inc/footer3.php'); ?>

<!-- Slider-JavaScript -->
<script src="../dist/js/responsiveslides.min.js"></script>
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

<script src="../dist/js/bootstrap.min.js"></script>
<script src="../dist/js/owl.carousel.min.js"></script>
<script src="../dist/js/wow.min.js"></script>
<script src="../dist/js/main.js"></script>
</body>
</html>
