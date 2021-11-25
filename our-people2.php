<?php

include('acms/pages/connect.php');

require_once('acms/pages/fns.php');

?>
<section class="team-area section-gap">
<div class="container">
<div class="row justify-content-center d-flex align-items-center">
<?php if(get_team('hierarchy', '1') != ""){ ?>
<div class="col-lg-4 col-md-6 single-team">
<div class="thumb">
<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '1'); ?>" alt="">
<div class="align-items-end justify-content-center d-flex">
<div class="social-links">
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<a href="<?php echo get_team('linkedin_url', '1'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>
</div>
</div>
</div>
<h5><strong><?php echo get_team('fullname', '1'); ?></strong></h5>
<p><?php echo get_team('designation', '1'); ?></p>
</div>
<?php } ?>
<?php if(get_team('hierarchy', '2') != ""){ ?>
<div class="col-lg-4 col-md-6 single-team">
<div class="thumb">
<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '2'); ?>" alt="">
<div class="align-items-end justify-content-center d-flex">
<div class="social-links">
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<a href="<?php echo get_team('linkedin_url', '2'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>
</div>
</div>
</div>
<h5><strong><?php echo get_team('fullname', '2'); ?></strong></h5>
<p><?php echo get_team('designation', '2'); ?></p>
</div>
<?php } ?>
<?php if(get_team('hierarchy', '7') != ""){ ?>
<div class="col-lg-4 col-md-6 single-team">
<div class="thumb">
<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '7'); ?>" alt="">
<div class="align-items-end justify-content-center d-flex">
<div class="social-links">
<!-- <a href="#"><i class="fa fa-twitter"></i></a>  -->
<a href="<?php echo get_team('linkedin_url', '7'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>
</div>
</div>
</div>
<h5><strong><?php echo get_team('fullname', '7'); ?></strong></h5>
<p><?php echo get_team('designation', '7'); ?></p>
</div>
<?php } ?>
</div>
<div class="row justify-content-center d-flex align-items-center">
<!--<?php if(get_team('hierarchy', '4') != ""){ ?>-->
<!--<div class="col-lg-4 col-md-6 single-team">-->
<!--<div class="thumb">-->
<!--<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '4'); ?>" alt="">-->
<!--<div class="align-items-end justify-content-center d-flex">-->
<!--<div class="social-links">-->
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--<a href="<?php echo get_team('linkedin_url', '4'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<h5><strong><?php echo get_team('fullname', '4'); ?></strong></h5>-->
<!--<p><?php echo get_team('designation', '4'); ?></p>-->
<!--</div>-->
<!--<?php } ?>-->
<!--<?php if(get_team('hierarchy', '5') != ""){ ?>-->
<!--<div class="col-lg-4 col-md-6 single-team">-->
<!--<div class="thumb">-->
<!--<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '5'); ?>" alt="">-->
<!--<div class="align-items-end justify-content-center d-flex">-->
<!--<div class="social-links">-->
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--<a href="<?php echo get_team('linkedin_url', '5'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<h5><strong><?php echo get_team('fullname', '5'); ?></strong></h5>-->
<!--<p><?php echo get_team('designation', '5'); ?></p>-->
<!--</div>-->
<!--<?php } ?>-->
<!--<?php if(get_team('hierarchy', '6') != ""){ ?>-->
<!--<div class="col-lg-4 col-md-6 single-team">-->
<!--<div class="thumb">-->
<!--<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '6'); ?>" alt="">-->
<!--<div class="align-items-end justify-content-center d-flex">-->
<!--<div class="social-links">-->
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--<a href="<?php echo get_team('linkedin_url', '6'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<h5><strong><?php echo get_team('fullname', '6'); ?></strong></h5>-->
<!--<p><?php echo get_team('designation', '6'); ?></p>-->
<!--</div>-->
<!--<?php } ?>-->
<!--<?php if(get_team('hierarchy', '7') != ""){ ?>-->
<!--<div class="col-lg-4 col-md-6 single-team">-->
<!--<div class="thumb">-->
<!--<img class="img-responsive img-thumbnail" src="acms/pages/<?php echo get_team('image_url', '7'); ?>" alt="">-->
<!--<div class="align-items-end justify-content-center d-flex">-->
<!--<div class="social-links">-->
<!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--<a href="<?php echo get_team('linkedin_url', '7'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<h5><strong><?php echo get_team('fullname', '7'); ?></strong></h5>-->
<!--<p><?php echo get_team('designation', '7'); ?></p>-->
<!--</div>-->
<!--<?php } ?>-->
</div>
</div>
</section>
