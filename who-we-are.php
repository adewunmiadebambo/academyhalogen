<?php
include('acms/pages/connect.php');
require_once('acms/pages/fns.php');

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Academy Halogen</title>
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


<style>

body {
	background: url(images/about_bg.jpg) no-repeat center 100px;;
	background-size: contain;
}
.about {
	background: none;
}


</style>


</head>
<body>


<?php include('inc/header.php'); ?>




<div id="h_banner">

<div class="about">
<div class="about-info">
<div class="row">
<div class="col-md-7">

</div>
<div class="col-md-5">
<div class='custom-about'>
<h3>Who We Are</h3>
<p>Organisations need new tools and competencies to enable them to address<br>the dynamics of today’s risk</p>
</div>
</div>
</div>
</div>
</div>
</div>






<div id="services" class="service">
<div class="container">
<div class="breadcrumbs">
<ol class="breadcrumb">
<li><a href="./">Home</a></li>
<li class="active">Who we are</li>
</ol>
</div>


<div class="row">
<div class="col-md-3">
<ul id="cust" class="nav-stack">
<a data-toggle="pill" href="#menu1"><li>Overview</li></a> 
<a data-toggle="pill" href="#menu2"><li>Mission</li></a> 
<a href="our-people"><li>Our People</li></a> 
</ul>                  

</div>


<div class="col-md-9">

<div class="tab-content">
<div id="menu1" class="tab-pane fade in active">
<div class="row">

<div class="col-md-12">
<h1 style="margin-bottom: 30px; margin-top: 30px;">Academy Halogen</h1>
<p> Is an institution that demonstrably
shapes the agenda for risk management
and security practice across the industry’s value chain</p>

<p>We do this via;<br><br>

<div class="list-group">
<a href="#" class="list-group-item">Thought Leadership</a>
<a href="#" class="list-group-item">Creating and disseminating new knowledge
via capacity building across key
competencies</a>
<a href="#" class="list-group-item">Becoming a space for research, reflections
and policy dialogues.</a>
<a href="#" class="list-group-item">Establishing the standard in the practice
of security.</a>
</div>
</p>


<p>Our school offers programmes for both
basic and advanced professionals that seek
to enhance their skills, competencies, experiences
and qualifications in the security and risk management space.</p>

<p>A certificate from Academy Halogen guarantees
a solid foundation in the study of risk
management and security.<br><br>
Through our courses, we groom and provide
professionals and competent talents that
redefines security education.</p>
</div>
</div>
</div>





<div id="menu2" class="tab-pane fade">
<div class="row">

<div class="col-md-12">
<h1 style="margin-bottom: 30px; margin-top: 30px;">Our Vision</h1>

<p><strong>Organisatiobal Definition:</strong> A learning institution that demonstrably shapes enterprise security risk management via education, research, strategy, policy and thought leadership</p>
<p><strong>Our Brand Proposition:</strong> We will <strong>create knowledge</strong> in pursuit of <strong>safety in an open world</strong></p>
<p><strong>Our Strategic Imperatives:</strong> Risk – Policy - Strategy</p>
</p>
</div>
</div>
</div>


<div id="menu3" class="tab-pane fade">
<div class="row">

<div class="col-md-12">

</div>
</div>
</div>


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