<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$get = mysqli_real_escape_string($connect, multiexplode(array("/","/"),$_SERVER['REQUEST_URI'],'school'));

$token = str_replace('-',' ',$get);

$qsProg = mysqli_query($connect, "select * from school where title = '$token'");
$rsProg = mysqli_fetch_assoc($qsProg);

$qsProg2 = mysqli_query($connect, "select * from school where title <> '$token'");
$rsProg2 = mysqli_fetch_assoc($qsProg2);

$qsProg3 = mysqli_query($connect, "select * from school where title <> '$token' && title <> '{$rsProg2['title']}'");
$rsProg3 = mysqli_fetch_assoc($qsProg3);

$qsProg4 = mysqli_query($connect, "select * from school where title <> '$token' && title <> '{$rsProg3['title']}' && title <> '{$rsProg2['title']}'");
$rsProg4 = mysqli_fetch_assoc($qsProg4);

$qsCourse = mysqli_query($connect, "select * from programs where mp_title = '$token' && ext_link = 'yes'");
$nsCourse = mysqli_num_rows($qsCourse);

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
<link rel="stylesheet" href="../css/bootstrap.min.css" />

<script src="../js/jquery-3.4.1.min.js"></script>
<script src="../js/bootstrap.min2.js"></script>

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
</style>

</head>
<body>


<?php include('inc/header2.php'); ?>

<?php if($token == "Thought Leadership & Advisory"){ ?>
<section>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
<div class="carousel-inner">
<div class="carousel-item active">
<img src="../images/slider/slider5.jpg" class="d-block w-100" alt="...">
</div>
<a href="https://halogenintel.com.ng/latest/2020/12/01/special-report-home-enterprise-security-during-uncertain-times/" target="_blank">
<div class="carousel-item">
<img src="../images/slider/slider6.jpg" class="d-block w-100" alt="...">
</div>
</a>
<div class="carousel-item">
<img src="../images/slider/slider7.jpg" class="d-block w-100" alt="...">
</div>
</div>
<a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</section>
<?php } ?>
<div id="inner">

<div class="container">

<div class="row">

<div class="col-12 text-center">
<br>
<h3><?php echo $rsProg['title']; ?></h3>

</div>

</div>

</div>

</div>


<div id="home2">
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

<div id="acc_info">
<div class="container">
<div class="row">
<?php for($i=0; $i<$nsCourse; $i++){
$rsCourse = mysqli_fetch_assoc($qsCourse);
?>
<div class="col-md-3" style="margin-bottom:30px;">
<div style="background:url('../acms/pages/<?php echo $rsCourse['banner_url']; ?>') no-repeat; background-size:cover; height:200px;"></div>

<div class="details">

<div class="content">

<?php echo $rsCourse['title'] ?>

</div>

<div class="duration">

<div class="row">

<div class="col-6" style="padding-left:15px">&nbsp;</div>

<div class="col-6" style="padding-right:15px" align="right"><a href="../courses/<?php echo str_replace(' ','-',$rsCourse['title']); ?>"><button class="btn1">Learn more</button></a></div>

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

<?php if($get == "School-of-Security-Studies"){ ?>
<div id="study">
<div class="container">

<div class="col-12 text-center"><a href="../courses/Security-Studies"><button class="btn2" style="background-color: #051C44;
    color: #fff;
    border: none;
    padding: 14px 15px;
    width: 40%;
    font-size: 14px;
    transition: .3s;">View courses</button></a></div>

</div>
</div>
<?php } ?>


<div id="school1">

<div class="container">

<div class="row">

<div class="col-12"><h3>Our Schools</h3></div>

</div>

</div>

</div>

<div id="school2" class="school">

<div class="container-fluid">
<div class="row">
<div class="col-md-4" style="margin-bottom:30px;">
<div style="background:url('../acms/pages/<?php echo $rsProg2['banner_url']; ?>') no-repeat; background-size:cover; background-position: center;  height:180px;"></div>

<div class="grid_sch" style="background:#010736;color:#fff; padding:20px;">
<h3><?php echo $rsProg2['title']; ?></h3>

<p><?php echo $rsProg2['summary']; ?></p>
<p style="padding-bottom:12px">&nbsp;</p>
<a href="../school/<?php echo str_replace(' ','-',$rsProg2['title']); ?>"><i class="fa fa-arrow-right"></i></a>
</div>
</div>
<div class="col-md-4" style="margin-bottom:30px;">
<div style="background:url('../acms/pages/<?php echo $rsProg4['banner_url']; ?>') no-repeat; background-size:cover; background-position: center; height:180px;"></div>

<div class="grid_sch" style="background:#012E33;color:#fff; padding:20px;">
<h3><?php echo $rsProg4['title']; ?></h3>

<p><?php echo $rsProg4['summary']; ?></p>
<a href="../school/<?php echo str_replace(' ','-',$rsProg4['title']); ?>"><i class="fa fa-arrow-right"></i></a>

</div>
</div>

<div class="col-md-4" style="margin-bottom:30px;">
<div style="background:url('../acms/pages/<?php echo $rsProg3['banner_url']; ?>') no-repeat; background-size:cover; background-position: center;  height:180px;"></div>

<div class="grid_sch" style="background:#012336;color:#fff; padding:20px;">
<h3><?php echo $rsProg3['title']; ?></h3>

<p><?php echo $rsProg3['summary']; ?></p><br>

<a href="../school/<?php echo str_replace(' ','-',$rsProg3['title']); ?>"><i class="fa fa-arrow-right"></i></a>
</div>
</div>

</div>
</div>

</div>
<br><br><br><br>
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
