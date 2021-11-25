<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');

$q = base64_decode($_GET['q']);

$query = "select * from banner where id = '$q'";
$result = mysqli_query($connect, $query);
$row = mysqli_fetch_array($result);


$banner_type = $row['banner_type'];
$title = $row['title'];
$description = $row['description'];
$button_caption = $row['button_caption'];
$button_url = $row['button_url'];
$image_url = $row['image_url'];
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
                        <h1 class="page-header">Banner Management</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->


                <div class="row">
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
				<form action="proc-edit-banner.php" method="post" enctype="multipart/form-data" >
					<div class="form-group input-group">
						<span class="input-group-addon">Banner Type</span>
						<select name="banner_type" class="form-control">
							<option selected><?php echo $banner_type; ?></option>
							<option value="">Choose one</option>
							<option value="image">Image</option>
							<option value="background">Background</option>
						</select>
					</div>
					
					<div class="form-group input-group">
						<span class="input-group-addon">Caption</span>
						<input name="title" type="text" class="form-control" value="<?php echo $title; ?>">
					</div>
					<div class="form-group input-group">
					<span><b>Description</b><br></span>
						
							<textarea name="description" id="description"><?php echo $description; ?></textarea> 
							<script language="JavaScript" type="text/javascript">
								generate_wysiwyg('description');
							</script></div>  
					<div class="form-group input-group">
						<span class="input-group-addon">Button Caption</span>
						<input name="button_caption" type="text" class="form-control" value="<?php echo $button_caption; ?>">
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon">Button URL</span>
						<input name="button_url" type="text" class="form-control" value="<?php echo $button_url; ?>">
					</div>  
					<div class="form-group input-group">
						<span class="input-group-addon">Image URL</span>
						<input name="image_url" type="text" class="form-control" value="<?php echo $image_url; ?>">
					</div>  
					<div class="form-group input-group">
						<span class="input-group-addon">External Link</span>
						<input name="ext_link" type="url" class="form-control" value="<?php echo $ext_link; ?>" >
						<input type="hidden" name="id" value="<?php echo $_GET['q']; ?>">
					</div>
					<div class="form-group input-group">
						<input type="submit" class="btn btn-primary" value="Submit">
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        View Pages
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
										<th>Title</th>
										<th>Banner Caption</th>
										<th>Banney Type</th>
										<th>Banner URL</th>
										<th>Ext Link</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

<?php
//Query based on button clicked abot 

$query = "select * from banner order by id desc";
$result = mysqli_query($connect, $query);
$num=mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
$row = mysqli_fetch_array($result)
?>
								<tr class="odd gradeX">
								<td><a href="edit_banner.php?q=<?php echo base64_encode($row['id']); ?>"><b><?php echo $row['title']; ?></b></a></td>
								<td><?php echo $row['button_caption']; ?></td>
								<td><?php echo $row['banner_type']; ?></td>
								<td><img src="<?php echo $row['image_url']; ?>" class="img-responsive" width="200"></td>
								<td><?php echo $row['ext_link']; ?></td>
								<td>
								
								<a href="edit_banner.php?q=<?php echo base64_encode($row['id']); ?>">
								<input type="button" value="Edit"></a>

								
								<a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('banner'); ?>&return_url=<?php echo base64_encode('banner.php'); ?>"><input type="button" value="Delete" /></a>
								
								</td>
							   </tr>
<?php
}
?>


								</tbody>
							</table>
                            </div>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
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
