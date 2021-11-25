<?php
session_start();
?>
<div id="header" style="background: #000C3F">
<div class="container">
<div class="row">
<div class="col-md-9">
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
<li><a href="index-2" style="padding-left:0px; color: #fff">Home</a></li>
<li class="dropdown">
<a class="dropdown-toggle" style="color: #fff" data-toggle="dropdown" href="#">About
<span class="caret"></span></a>
<ul class="dropdown-menu dropdown-content" style="top:17px;">
<?php sub_menu('About'); ?>
</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" style="color: #fff" data-toggle="dropdown" href="#">Programmes
<span class="caret"></span></a>
<ul class="dropdown-menu dropdown-content" style="top:17px;">
<li><a href="training-program?programme=<?php echo base64_encode('Management & Leadership')?>">Management & Leadership</a></li>
<li class="divider"></li>
<li><a href="training-program?programme=<?php echo base64_encode('Market Engagement')?>">Market Engagement</a></li>
<li class="divider"></li>
<li><a href="training-program?programme=<?php echo base64_encode('Security & Risk Management')?>">Security & Risk Management</a></li>
<li class="divider"></li>
<li><a href="training-program?programme=<?php echo base64_encode('Soft Skills & Competencies')?>">Soft Skills & Competencies</a></li>
<li class="divider"></li>
<li><a href="training-program?programme=<?php echo base64_encode('Technology')?>">Technology</a></li>
</ul>
</li>
<li><a href="our-facility" style="color: #fff">Facilities</a></li>
<li class="dropdown">
<a class="dropdown-toggle" style="color: #fff" data-toggle="dropdown" href="#">News & Media
<span class="caret"></span></a>
<ul class="dropdown-menu dropdown-content" style="top:17px;">
<li><a href="https://academyhalogen.com/blog/" target="_blank" style="color: #fff">Blog</a></li>
<li class="divider"></li>
<li><a href="events">Events</a></li>
<li class="divider"></li>
<li><a href="news-media">Press Release</a></li>
</ul>
</li>
<?php if($_SESSION['alumni']){ ?>
<li><a href="alumni-dashboard" style="color: #fff">Alumni Dashboard</a></li>
<?php }else{ ?>
<li><a href="alum-register" style="color: #fff">Alumni</a></li>
<?php } ?>
<li><a href="contact" style="color: #fff">Contact</a></li>
<li><li><a href="#" class="icon-search-menu" style="color: #fff" data-toggle="modal" data-target="#myModal"><i class="fa fa-search"></i></a></li></li>
</ul>                        
</div> 
</nav>
</div>
</div>
<div class="col-md-3 logo" align="right" style="margin-top: -24px;">
<img src="images/academy3.jpg" class="img-responsive big-logo" alt="Academy Halogen Logo">
<img src="images/small-academy.jpg" class="img-responsive small-logo" alt="Academy Halogen Logo">
</div>
</div>
</div>
</div>



<div id="myModal" class="modal fade large" role="dialog">
    <div class="modal-dialog">        
        <div class="modal-content">      
            <div class="modal-body">         
                <div class="modal-dialog modal-search fade in">
                    <div data-dismiss="modal" class="dismiss-modal"><span class="pe-7s-close"></span></div>
                    <div class="search-wrapper">
                        <form action="#" method="post">
							<div class="input-group">
								<input type="text" name="search" class="form-control input-lg" placeholder="Search...">
								<div class="input-group-btn">
								  <button class="btn btn-default btn-lg" type="submit">
									<i class="fa fa-search"></i>
								  </button>
								</div>
							  </div>
                        </form>
                    </div>
                </div>      
            </div>      
        </div>
    </div>
</div>