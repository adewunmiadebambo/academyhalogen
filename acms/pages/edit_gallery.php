<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');

$q = base64_decode($_GET['q']);

$query = "select * from photo_gallery where id = '$q'";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_array($result);



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
                        <h1 class="page-header">Gallery Manager</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <h3 class="page-header">Gallery Manager</h3>
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
				<form action="proc-edit-gallery.php" method="post" enctype="multipart/form-data" >
					
					<div class="form-group input-group">
						<span class="input-group-addon">Gallery Title</span>
						<input name="title" type="text" class="form-control" value="<?php echo $row['title']; ?>" placeholder="Enter Gallery Title" required="required">
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon">Gallery Album</span>
						<select name="album_id"  class="form-control">
						<?php if($album_id){ echo '<option selected value="'.$album_id.'">'.cat_value($album_id).'</option>';} ?>
						<option value="">Choose on</option>
							<?php album_list(); ?>
							<option value="">------------</option>
						</select>
					</div>
					<div class="form-group input-group">
					<span><b>Content</b> <br></span>
						<textarea name="content" id="content"><?php echo $row['content']; ?></textarea>
						<script language="JavaScript" type="text/javascript">
							generate_wysiwyg('content');
						</script>  </div>
					<div class="form-group input-group">
						<span class="input-group-addon">Image URL</span>
						<input name="image_url" type="text" class="form-control" value="<?php echo $row['image_url']; ?>" placeholder="Image Url e.g: example/image.jpg" required="required">
					</div>  
					<div class="form-group input-group">
						<span class="input-group-addon">External Link</span>
						<input name="ext_link" type="url" class="form-control" placeholder="Facebook Url e.g: http://www.example.com/" value="<?php echo $row['ext_link']; ?>" required="required">
					</div> 

					<div class="form-group input-group">
						<input type="hidden" name="id" value="<?php echo $q; ?>">
						<input type="submit" class="btn btn-primary" value="Edit Management Team">
					</div>

				</form>
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
