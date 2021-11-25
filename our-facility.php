<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');



$qsAlbum = mysqli_query($connect, "select * from gallery_album where album_title = 'Facilities'");

$rsAlbum = mysqli_fetch_assoc($qsAlbum);



$qsAllPhoto = mysqli_query($connect, "select * from photo_gallery where album_id = '{$rsAlbum['id']}'");

$nsAllPhoto = mysqli_num_rows($qsAllPhoto);



$qsPhoto = mysqli_query($connect, "select * from photo_gallery where album_id = '{$rsAlbum['id']}' order by id desc limit 0, 6");

$nsPhoto = mysqli_num_rows($qsPhoto);



$qsPhoto2 = mysqli_query($connect, "select * from photo_gallery where album_id = '{$rsAlbum['id']}' order by id desc limit 6,$nsAllPhoto");

$nsPhoto2 = mysqli_num_rows($qsPhoto2);



?>



<!DOCTYPE html>



<html class='no-js'>



<meta http-equiv="content-type" content="text/html;charset=utf-8" />



<head>

<?php include('analytics.php'); ?>

<meta charset='utf-8'>



<meta content='width=device-width, initial-scale=1.0' name='viewport'>



<title>Our Facilities - Academy Halogen</title>

<link rel="stylesheet" href="dist/css/bootstrap.css">

<link rel="stylesheet" href="dist/css/bootstrap.min.css">


<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style2.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">







<link rel="icon" href="images/favicon.png" />







<link rel="stylesheet" media="all" href="assets/lrdx-77c4f7a2ed2823479709cb56e8fe2d919736c8fe4b9bb7455ce7ab3201d6c28f.css" />







<script src="assets/basic-5e770817dde20ba2908034b1598b74d40a24f82290213d46101f4047572cd23a.js" cache="all"></script>







<link href="dist/css/simpleLightbox.css" rel="stylesheet" type="text/css" />



<style>

@media(max-width:736px){

	body {

background: url("acms/pages/uploads/Facility 13.jpg") no-repeat center 100px;

background-size: contain;

}

}

</style>



</head>



<body>





<?php  include('inc/header.php');  ?>


<div id='not-slidepanel'>

<div class='page-wraper'>



<header class='top-bar'>



<div class='top-bar-wrapper'>



</div>



<!-- Subnnav -->



</header>

<div class='hero-slider-container' role='banner'>

<div class="hero-slider js-window-height" style="margin-top: -15px;min-height: 581px;">

<div slide>

<video muted preload="none" loop>

<source

data-1920="All.mp4"

data-1280="All.mp4"

data-852="All.mp4"

data-640="All.mp4"

src="All.mp4"

type='video/mp4' />

</video>

<img src="acms/pages/uploads/banner1.jpg">

<div content>

<?php for($g=0; $g<$nsPhoto; $g++){

$rsPhoto = mysqli_fetch_assoc($qsPhoto);

?>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a title="" href="acms/pages/uploads/<?php echo $rsPhoto['image_url']; ?>">

<div class="gal_grid_outer1">

<img src="acms/pages/uploads/<?php echo $rsPhoto['image_url']; ?>" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>



<?php } ?>

</div>

</a>

</div>

</div>



<a class='button-scroll-down js-scroll-down'><i class="fa fa-arrow-down" style="padding-top: 20px;"></i></a>



</div>





<div id="services" class="gallery" style="padding-top: 70px">

<h2 align="center">Our Facilities</h2>



<div class="container">

<div class="col-md-1"></div>

<div class="col-md-10">

<div class="story">

Our facilities are comfortable and fully equipped, with a large open space and garden, projectors and screens, comfortable chairs, tables and a canteen. Our environment is ideal for corporate events, seminars, workshops and corporate training.<p>&nbsp;</p>

</div>

</div>

<div class="col-md-1"></div>

</div>

<div class="container">

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a href="#" data-toggle="modal" data-target="#myModal1">

<div class="gal_grid_outer1">

<img src="images/01.jpg" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a href="#" data-toggle="modal" data-target="#myModal22">

<div class="gal_grid_outer1">

<img src="images/03.jpg" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a href="#" data-toggle="modal" data-target="#myModal33">

<div class="gal_grid_outer1">

<img src="images/04.jpg" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a href="#" data-toggle="modal" data-target="#myModal44">

<div class="gal_grid_outer1">

<img src="images/05.jpg" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a href="#" data-toggle="modal" data-target="#myModal55">

<div class="gal_grid_outer1">

<img src="images/06.jpg" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>

<?php for($g=0; $g<$nsPhoto2; $g++){

$rsPhoto2 = mysqli_fetch_assoc($qsPhoto2);

?>

<div class="col-md-4 gallery-columns" style="margin-bottom: 30px;">

<div class="gal_grid_outer">

<a title="" href="acms/pages/uploads/<?php echo $rsPhoto2['image_url']; ?>">

<div class="gal_grid_outer1">

<img src="acms/pages/uploads/<?php echo $rsPhoto2['image_url']; ?>" alt=" " class="img-responsive l_two grid" />

</div>

</a>

</div>

</div>



<?php } ?>

<div id="myModal1" class="modal fade" role="dialog">

<div class="modal-dialog">



<!-- Modal content-->

<div class="modal-content">

<div class="modal-header">

<button type="button" class="close" data-dismiss="modal">&times;</button>

<h4 class="modal-title"></h4>

</div>

<div class="modal-body">

<video width="100%" controls>

<source src="01.mp4" type="video/mp4">

</video>

</div>

<div class="modal-footer">

<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>

</div>



</div>

</div>

<div id="myModal22" class="modal fade" role="dialog">

<div class="modal-dialog">



<!-- Modal content-->

<div class="modal-content">

<div class="modal-header">

<button type="button" class="close" data-dismiss="modal">&times;</button>

<h4 class="modal-title"></h4>

</div>

<div class="modal-body">

<video width="100%" controls>

<source src="03.mp4" type="video/mp4">

</video>

</div>

<div class="modal-footer">

<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>

</div>



</div>

</div>



<div id="myModal33" class="modal fade" role="dialog">

<div class="modal-dialog">



<!-- Modal content-->

<div class="modal-content">

<div class="modal-header">

<button type="button" class="close" data-dismiss="modal">&times;</button>

<h4 class="modal-title"></h4>

</div>

<div class="modal-body">

<video width="100%" controls>

<source src="04.mp4" type="video/mp4">

</video>

</div>

<div class="modal-footer">

<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>

</div>



</div>

</div>



<div id="myModal44" class="modal fade" role="dialog">

<div class="modal-dialog">



<!-- Modal content-->

<div class="modal-content">

<div class="modal-header">

<button type="button" class="close" data-dismiss="modal">&times;</button>

<h4 class="modal-title"></h4>

</div>

<div class="modal-body">

<video width="100%" controls>

<source src="05.mp4" type="video/mp4">

</video>

</div>

<div class="modal-footer">

<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>

</div>



</div>

</div>



<div id="myModal55" class="modal fade" role="dialog">

<div class="modal-dialog">



<!-- Modal content-->

<div class="modal-content">

<div class="modal-header">

<button type="button" class="close" data-dismiss="modal">&times;</button>

<h4 class="modal-title"></h4>

</div>

<div class="modal-body">

<video width="100%" controls>

<source src="06.mp4" type="video/mp4">

</video>

</div>

<div class="modal-footer">

<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

</div>

</div>



</div>

</div>

<div class="clearfix"></div>

</div>

</div>









<?php include('inc/footer2.php'); ?>





</div>





</body>



<script>



//<![CDATA[



window.gon={};gon.leads_api_url=null;gon.search_source_urls=[""];gon.base_url="index.html";gon.translations={"is_on_offer":"Currently on offer","offer_cta":"See the offer","select_country":"Select your country","offer_form_full_name":"FULL NAME","offer_form_email":"EMAIL","offer_form_phone":"PHONE","offer_form_city":"CITY","offer_form_purpose":"REQUEST PURPOSE","offer_form_purpose_test_drive":"Test Drive","offer_form_get_a_quote":"Get Quote","offer_form_call_me_back":"Call me back","offer_form_get_more_info":"Get more info by email","offer_form_submit":"SUBMIT","offer_form_when":"WHEN ARE YOU BUYING A NEW CAR","offer_form_select":"Select","offer_form_when_one_month":"One month","offer_form_when_three_months":"Three months","offer_form_when_more":"More than three months","offer_form_when_not_decided":"Not decided","back_to_top":"Back to Top","back_to_finance":"Financial Services","offer_form_when_more_than_three_months":"More than three months"};gon.compare_tool={"stage_0_name":"vehicles","stage_0_header":"vehicle","stage_1_name":"models","stage_1_header":"model","stage_2_name":"engines","stage_2_header":"engine","stage_3_name":"list","stage_3_header":"Add up to three models to compare","select_your":"select your","add_vehicle":"Add a vehicle","change_engine":"Change engine","open_all":"Open all","close_all":"Close all","price":"Price","overview":"overview","key_features":"key features","perfromance_and_weights":"PERFORMANCE AND WEIGHTS","perfromance":"PERFORMANCE","fuel_consumption":"FUEL CONSUMPTION","engine_title":"engine","select_engine":"Select an engine","weights_title":"WEIGHTS (KG)","towing_options":"TOWING (KG) (TOWING PACK OPTION)","towing_title":"TOWING","roof_title":"ROOF CARRYING","dimensions_title":"DIMENSIONS AND CAPABILITIES","turning_title":"TURNING CIRCLE","obstacle_clearance":"OBSTACLE CLEARANCE","wading_title":"WADING DEPTH","vehicle_length_title":"VEHICLE LENGTH","vehicle_heights_title":"VEHICLE HEIGHT \u0026 WIDTHS","approach_title":"APPROACH ANGLE – OFF-ROAD GEOMETRY","breakover_title":"BREAKOVER ANGLE - OFF-ROAD GEOMETRY","departure_title":"DEPARTURE ANGLE - OFF-ROAD GEOMETRY","loadspace_up":"LOADSPACE CAPACITY - REAR SEATS UPRIGHT","loadspace_forward":"LOADSPACE CAPACITY - REAR SEATS FORWARD","ride_height":"STANDARD RIDE HEIGHT","headroom":"HEADROOM","seats_no":"Number of seats","consumption":"Combined l/100km (mpg)","emission":"CO2 (g/km)","tank":"Tank capacity (litres approx.)","features":"features","top_speed":"Top speed km/h (mph)","acceleration":"Acceleration 0-100 km/h (0-60 mph) seconds","consumption_urban":"Urban l/100km (mpg)","consumption_extra":"Extra Urban l/100km (mpg)","capcity":"Capacity (cc)","power":"Maximum power EEC-PS (kW)","torque":"Maximum torque EEC-Nm (lb. ft.)","transmission":"Transmission","weight_from":"Weight from (kg)","maximum_laden_weight":"Maximum Laden weight (kg)","maximum_mass_front":"Maximum mass on each axle (front) (kg)","maximum_mass_rear":"Maximum mass on each axle (rear) (kg)","unbraked":"Unbraked trailer (kg)","maximum_tow":"Maximum towing (kg)","coupling_point":"Maximum coupling point/nose weight (kg)","maximum_tow_combination":"Maximum vehicle and trailer combination/Gross Train Weight (kg)","roof_carrying":"Maximum roof load (including Roof Rails) (kg)","turning_cicrle":"kerb-to-kerb(m)","turning_cicrle_wall":"Wall-to-wall (m)","turning_cicrle_turns":"Turns lock-to-lock (no. of turns)","track_front_height":"Standard ride height - Front Axle (mm)","track_back_height":"Standard ride height - Rear Axle (mm)","wading_depth":"Maximum wading depth (mm)","length":"Overall length (mm)","wheelbase":"Wheelbase (mm)","height":"height (mm)","track_front":"Front track (mm)","track_back":"Rear track (mm)","width_mirrors":"Overall width including mirrors (mm)","width_nomirrors":"Overall width with mirrors folded (mm)","aproach_angle_std":"Standard","aproach_angle_off":"Off-Road Geometry","breakover_angle_std":"Standard","breakover_angle_off":"Off-Road Geometry","departure_angle_std":"Standard","departure_angle_off":"Off-Road Geometry","boot_seats_up_height":"Height (mm)","boot_seats_up_width":"Width (mm)","boot_seats_up_volume":"Loadspace volume (litres)","boot_seats_up_arches":"Loadspace width between arches (mm)","boot_seats_up_flor":"Length at floor (mm)","boot_seats_forward_height":"Height (mm)","boot_seats_forward_width":"Width (mm)","boot_seats_forward_volume":"Loadspace volume (litres)","boot_seats_forward_arches":"Loadspace width between arches (mm)","boot_seats_forward_flor":"Length at floor (mm)","roof_side_rails":"With roof side rails (mm)","roof_antennae":"With roof antennae (mm)","front_headroom":"Front headroom (mm)","rear_headroom":"Rear headroom (mm)","front_headroom_panoramic":"Front headroom (with panoramic roof) (mm)","rear_headroom_panoramic":"Rear headroom (with panoramic roof) (mm)","configurator_url":"BUILD YOUR OWN","revs":"@ rev/min","work_revs":" work @ rev/min","weight_gross":"Gross vehicle weight (kg)","clearance":"Ground clearance fully laden (mm)"};gon.prices={"full_string":"Price from \u003cspan\u003e% ^\u003c/span\u003e","offer_string":"Price from \u003cspan\u003e% ^\u003c/span\u003e","currency_delimiter":",","currency_symbol":"₦"};



//]]>



</script>







<script src="assets/lrdx-b6b49cbcb0cd031518ef83347e297c3f7d68be7bec8c5aefc67bc17bf1aebffa.js" cache="all"></script>







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
