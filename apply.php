<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

$token = mysqli_real_escape_string($connect, base64_decode($_GET['token']));
$course = mysqli_real_escape_string($connect, base64_decode($_GET['course']));

$qsProg = mysqli_query($connect, "select * from courses where title = '$course'");
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



<link rel="stylesheet" media="all" href="assets/lrdx-77c4f7a2ed2823479709cb56e8fe2d919736c8fe4b9bb7455ce7ab3201d6c28f.css" />

<style media="screen">
body{background:none}
</style>

</head>
<body>


<?php include('inc/header.php'); ?>

<div id="apply1">

<div class="container">

<div class="row">


<div class="col-md-7" style="background:#1F3068;color:#fff;">
<?php if($_GET['reg']){ ?>
<div class="alert alert-success alert-dismissible" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
</button>
<strong>You have successfully registered for this course. We will get back to you shortly!</strong>
</div>
<?php } ?>

<h3>Apply for <?php echo $course; ?></h3>
<p><?php echo $rsProg['content']; ?><p></p><br>

<span>For more info call: +234 808 1602 646, 0700HALOGEN</span>
</p>
</div>

<div class="col-md-5" style="background:#FFC905;color:#fff;">

<div class="form">

<strong>Enter you details to book your seat</strong><p></p>

<form method="post" action="processRegister">

<div class="form-group">

<input type="text" name="name" placeholder="Enter your fullname" required class="formfield">

</div>

<div class="form-group">

<input type="email" name="email" placeholder="Email address" required class="formfield">

</div>

<div class="form-group">

<input type="tel" name="phone" placeholder="Phone number" required class="formfield">

</div>

<div class="form-group">

<input type="text" name="organization" placeholder="Organisation" required class="formfield">

</div>

<div class="form-group">

<input type="text" name="position" placeholder="Position" required class="formfield">

</div>

<div class="form-group" style="font-size: 14px;">

<input type="checkbox" name="getinfo" value="yes" class=""> Send me information on related programs in future

</div>

<div class="form-group">
<input type="hidden" name="course" value="<?php echo $rsProg['title']; ?>">
<button type="submit" class="btn1">REGISTER FOR THIS PROGRAM</button>

</div>

</form>

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
