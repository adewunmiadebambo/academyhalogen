<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');

$q = base64_decode($_GET['q']);

$query = "select * from home_page where id = '$q'";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_array($result);

$title = $row['title'];
$content = $row['content'];
$img_url = $row['image_url'];
$ext_link = $row['ext_link'];

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
<script language="javascript" src="jquery.js"></script>
<script src="my-js.js" type="text/javascript"></script>
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
                        <h1 class="page-header">Homepage</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->


                <div class="col-md-7 col-sm-12">
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
                    <form action="proc-edit-homepage.php" method="post" enctype="multipart/form-data" >
						<div class="form-group input-group">
							<span class="input-group-addon">Homepage Title</span>
							<input name="page_title" type="text" class="form-control" placeholder="Title" required="required" value="<?php echo $title; ?>">
						</div>
						<?php if($title == "Survey Monkey"){ ?>
						<div class="form-group">
						<span>Content<br></span>
						<textarea name="content" class="form-control" rows="6" placeholder="Description"><?php echo $content; ?></textarea>
						</div>
						<?php }else{ ?>
						<div class="form-group input-group">
						<span>Homepage Content<br></span>
							<textarea name="content" id="description"><?php echo $content; ?></textarea> 
							<script language="JavaScript" type="text/javascript">
								generate_wysiwyg('description');
							</script>
						</div>  
						<?php } ?>
						<div class="form-group input-group">
							<span class="input-group-addon">Image URL</span>
							<input name="img_url" type="text" class="form-control" placeholder="Image Url e.g: example/image.jpg" value="<?php echo $img_url; ?>">
						</div>  
						<div class="form-group input-group">
							<span class="input-group-addon">External Link</span>
							<input name="ext_link" type="text" class="form-control" placeholder="http://www.example.com" value="<?php echo $ext_link; ?>">
						</div>
						<div class="form-group input-group">
							<input type="hidden" name="id" value="<?php echo $q; ?>">
							<input type="submit" class="btn btn-primary" value="Edit">
						</div>

                    </form>
                </div>
				<div class="col-md-5">
						<?php include('pop-images.php'); ?>
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
