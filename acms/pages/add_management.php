<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="favicon.ico" /><title>Custom CMS - Aledoy Solutions Limited</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--><script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>
</head>

<body>

    <div id="wrapper">

    <?php include('top-nav.php'); ?>

            <?php include('my-nav.php'); ?>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Management Team</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <div class="row">
                <div class="col-md-7 col-sm-12">
                <br>
                <?php if($error)
            		{
                ?>
                <div class="text-danger" style="margin-bottom:10px;"><span class="glyphicon glyphicon-remove"></span> <?php echo $error; ?></div> 
                  
                <?php } ?>
                  
                <?php if($correct)
            		{
                ?>
                <div class="text-success" style="margin-bottom:10px;"><span class="glyphicon glyphicon-ok"></span> <?php echo $correct; ?></div> 
                  
                <?php } ?>
				<form action="proc-management-team.php" method="post" enctype="multipart/form-data" >
					
					<div class="form-group input-group">
						<span class="input-group-addon">Fullname</span>
						<input name="fullname" type="text" class="form-control" placeholder="Enter Fullname" required="required">
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon">Designation</span>
						<input name="designation" type="text" class="form-control" placeholder="Enter Designation" required="required">
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon">Image URL</span>
						<input name="image_url" type="text" class="form-control" placeholder="Image Url e.g: example/image.jpg">
					</div>  					
					<div class="form-group input-group">
						<span class="input-group-addon">Hierarchy</span>
						<input name="hierarchy" type="text" class="form-control" placeholder="Enter Hierarchy">
					</div>
					<div class="form-group input-group">
					<span><b>Content</b> <br></span>
						
							<textarea name="content" placeholder="Description" id="description"></textarea>
							<script language="JavaScript" type="text/javascript">
								generate_wysiwyg('description');
							</script></div>
					<div class="form-group input-group">
						<span class="input-group-addon">Facebook URL</span>
						<input name="facebook_url" type="url" class="form-control" placeholder="Facebook Url e.g: http://facebook.com/example">
					</div>  
					<div class="form-group input-group">
						<span class="input-group-addon">Twitter URL</span>
						<input name="twitter_url" type="url" class="form-control" placeholder="Facebook Url e.g: http://twitter.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">LinkedIn URL</span>
						<input name="linkedin_url" type="url" class="form-control" placeholder="Facebook Url e.g: http://linkedin.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Instagram URL</span>
						<input name="instagram_url" type="url" class="form-control" placeholder="Facebook Url e.g: http://instagram.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Social Link 1</span>
						<input name="social_url1" type="url" class="form-control" placeholder="Facebook Url e.g: http://social_url1.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Social Link 2</span>
						<input name="social_url2" type="url" class="form-control" placeholder="Facebook Url e.g: http://social_url2.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Social Link 3</span>
						<input name="social_url3" type="url" class="form-control" placeholder="Facebook Url e.g: http://social_url3.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Social Link 4</span>
						<input name="social_url4" type="url" class="form-control" placeholder="Facebook Url e.g: http://social_url4.com/example">
					</div> 
					<div class="form-group input-group">
						<span class="input-group-addon">Social Link 5</span>
						<input name="social_url5" type="url" class="form-control" placeholder="Facebook Url e.g: http://social_url5.com/example">
					</div> 

					<div class="form-group input-group">
						<input type="submit" class="btn btn-primary" value="Add Management Team">
					</div>

				</form>
                </div>
                                					<div class="col-md-5">
						<?php include('pop-images.php'); ?>
					</div>
                </div>

            </div>
            <!-- /.container-fluid -->

             <div class="row" style="margin-top:50px;">
                <div class="col-lg-12">
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
                <!-- /.col-lg-6 -->
                
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
            
            </div>
            <!-- /.row -->
            
            </div>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
