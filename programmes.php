<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$qsProg = mysqli_query($connect, "select * from programmes");
$rsProg = mysqli_fetch_assoc($qsProg);

$qsProg2 = mysqli_query($connect, "select * from programmes where title <> '{$rsProg['title']}'");
$rsProg2 = mysqli_fetch_assoc($qsProg2);

$qsProg3 = mysqli_query($connect, "select * from programmes where title <> '{$rsProg['title']}' && title <> '{$rsProg2['title']}'");
$rsProg3 = mysqli_fetch_assoc($qsProg3);

$qsCourse = mysqli_query($connect, "select * from courses where ext_link = 'yes'");
$nsCourse = mysqli_num_rows($qsCourse);

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Programmes - Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">

<style media="screen">
  body{background:none}
</style>

</head>
<body>


<?php include('inc/header.php'); ?>


<div id="inner">

<div class="container">

<div class="row">

<div class="col-12">
<h3>Our Programmes</h3>
</div>

</div>

</div>

</div>

<div id="home2">

<div class="container">

<div class="row">
<?php for($i=0; $i<$nsCourse; $i++){
$rsCourse = mysqli_fetch_assoc($qsCourse);
?>
<div class="col-md-4" style="margin-bottom:30px;">
<div style="background:url('acms/pages/<?php echo $rsCourse['banner_url']; ?>') no-repeat; background-size:cover; height:250px;"></div>

<div class="details">

<div class="content">

<?php echo $rsCourse['title'] ?>

</div>

<div class="duration">

<div class="row">

<div class="col-6" style="padding-left:15px"></div>

<div class="col-6" style="padding-right:15px" align="right"><a href="courses?title=<?php echo base64_encode($rsCourse['title']); ?>"><button class="btn1">Learn more</button></a></div>

</div>

</div>

</div>

</div>
<?php } ?>
</div>

</div>

</div>

<div id="school1">

<div class="container">

<div class="row">

<div class="col-12"><h3>Our Academy</h3></div>

</div>

</div>

</div>

<div id="school2">

<div class="container-fluid">

<div class="row">

<div class="col-md-4 left2">

<div class="row">

<div class="col-md-9">

<h3><?php echo $rsProg['title'] ?></h3>

<?php echo $rsProg['content'] ?><p></p><br>

<a href="school?token=<?php echo base64_encode($rsProg['title']) ?>"><button class="btn1">LEARN MORE ></button></a>

</div>

</div>

</div>
<div class="col-md-4 middle">

<div class="row">

<div class="col-md-9">

<h3><?php echo $rsProg2['title']; ?></h3>

<?php echo $rsProg2['content']; ?><p></p><br>

<a href="school?token=<?php echo base64_encode($rsProg2['title']) ?>"><button class="btn1">LEARN MORE ></button></a>

</div>

</div>

</div>

<div class="col-md-4 right2">

<div class="row">

<div class="col-md-9">

<h3><?php echo $rsProg3['title']; ?></h3>

<?php echo $rsProg3['content']; ?><p></p><br>
<br><br>
<a href="school?token=<?php echo base64_encode($rsProg3['title']) ?>"><button class="btn1">LEARN MORE ></button></a>

</div>

</div>

</div>

</div>

</div>

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
