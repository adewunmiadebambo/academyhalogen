<!doctype html>

<html>

<head>

<?php include('analytics.php'); ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Alumni - Academy Halogen</title>

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

	background: url(images/.jpg) center 100px no-repeat;

	background-size: contain;

}

#header  {

	background: #FFF;

}

</style>



</head>

<body>







<div id="header">

<div class="container">

<div class="row">

<div class="col-md-8">

<div class="menu">

<nav class="navbar" role="navigation"> 

<div class="navbar-header"> 

<button type="button" class="navbar-toggle" data-toggle="collapse" 

data-target="#example-navbar-collapse">

<span class="icon-bar"></span> 

<span class="icon-bar"></span> 

<span class="icon-bar"></span> 

<span class="icon-bar"></span> 

</button> 

</div> 



<div class="collapse navbar-collapse" id="example-navbar-collapse">                         

<ul class="nav navbar-nav">

<li><a href="./" style="padding-left:0px;">Home</a></li>

<li><a href="courses">Downloads</a></li>

<li><a href="#">Library</a></li>

<li><a href="forum/">Forum</a></li>

<li><a href="#"><i class="fa fa-search"></i></a></li>

</ul>                        

</div> 

</nav>

</div>

</div>

<div class="col-md-4" align="right">

<img src="images/logo.png" class="img-responsive" alt="AvantHYRE Logo">

</div>

</div>

</div>

</div>













<div id="h_banner">



<!-- banner-text -->

<div class="slider">

<div class="callbacks_container">

<ul class="rslides callbacks callbacks1" id="slider4">

<li>

<div class="banner-top">

<div class="banner-info-w3ls-agileinfo">

<div class="row">

<div class="col-md-7">



</div>

<div class="col-md-5">

<div class='custom1'>

<h3>Welcome to Academy Halogen</h3>

Academy Halogen is a learning institution that demonstrably shapes enterprise security risk management in the digital space via education, research, strategy, policy and thought leadership.

<p>&nbsp;</p>

</div>

</div>

</div>

</div>

</div>

</li>

</ul>

</div>

<div class="clearfix"> </div>



<!--banner Slider starts Here-->

</div>

<!--//Slider-->

</div>







<div id="banner" class="lyne" style="background: none">

<div class="container">

<div class="row">

<div class="col-md-4">

<a href="who-we-are">

<div class="r_one grid">

<h2>Training Programmes</h2>

</div>

</a>



<a href="#">

<div class="r_two grid">

<h2>Policy Works</h2>

</div>

</a>

</div>

<div class="col-md-4">

<a href="courses">

<div class="m_one grid">

<!-- START SCROLLING NEWS WINDOW SAMPLE -->

<div id="news_iframe_scroll">

<iframe name="NewsIFrame" src="news/news_scroll.php" style="height: 380px;padding-left: 25px;" frameborder="0" scrolling="no"></iframe>

</div>

<!-- END SCROLLING NEWS WINDOW SAMPLE -->

<h2>News and Updates</h2>

</div>

</a>

</div>

<div class="col-md-4">

<a href="member-login">

<div class="l_one grid" >

<h2>Media</h2>    

</div>

</a>



<a href="training-videos">

<div class="" style="padding: 0px">

<script>(function(t,e,s,n){var o,a,c;t.SMCX=t.SMCX||[],e.getElementById(n)||(o=e.getElementsByTagName(s),a=o[o.length-1],c=e.createElement(s),c.type="text/javascript",c.async=!0,c.id=n,c.src=["https:"===location.protocol?"https://":"http://","widget.surveymonkey.com/collect/website/js/tRaiETqnLgj758hTBazgd5dFZUMlginjfQBvO6uA4_2BuAx3USiKqPq30EjZ8VX_2B0W.js"].join(""),a.parentNode.insertBefore(c,a))})(window,document,"script","smcx-sdk");</script>

</div>

</a>

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