<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');

$id = $_GET['id'];

$query = "select * from management_team";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);



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
    <![endif]-->

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
                        <h1 class="page-header">Management Team</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <h3>Edit / Remove Management Team</h3>
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
            </div>

            <!-- /.container-fluid -->

             <div class="row" style="margin-top:10px;">
                <div class="col-lg-12">
                
                        
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Total Pages (<?php echo $num; ?>)
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" value="<?php echo $row['id']; ?>" id="all_id"></th>
                                            <th>Fullname</th>
                                            <th>Designation</th>
                                            <th>Image URL</th>
                                            <th>Hierarchy</th>
                                            <th>Content</th>
                                            <th>Social Links</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                <tbody>

	<?php
	for($i=0; $i<$num; $i++)
	{
		$row = mysqli_fetch_array($result)
	?>
								<tr class="odd gradeX">
									<td><input type="checkbox" value="<?php echo $row['id']; ?>" name="id[]" class="check"></td>
									<td><a href="edit_management.php?q=<?php echo base64_encode($row['id']); ?>"><?php echo $row['fullname']; ?></a></td>
									<td><?php echo $row['designation']; ?></td>
									<td><img src="<?php echo $row['image_url']; ?>" class="img-responsive" width="500"></td>
									<td><?php echo $row['hierarchy']; ?></td>
									<td><?php echo substr(strip_tags($row['content']),0,50); ?></td>
									<td>
									<?php echo $row['facebook_url']; ?>	
									<?php echo $row['twitter_url']; ?>	
									<?php echo $row['linkedin_url']; ?>	
									<?php echo $row['instagram_url']; ?> 
									<?php echo $row['social_url1']; ?> 
									<?php echo $row['social_url2']; ?> 
									<?php echo $row['social_url3']; ?> 
									<?php echo $row['social_url4']; ?> 
									<?php echo $row['social_url5']; ?> 
									</td>


									<td><a href="edit_management.php?q=<?php echo base64_encode($row['id']); ?>">
									<input type="button" value="Edit Mgt Team" /></a> 
									
									<a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('management_team'); ?>&return_url=<?php echo base64_encode('view_management.php'); ?>"><input type="button" value="Delete" /></a>
									</a>
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
                    <!-- /.panel -->
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
