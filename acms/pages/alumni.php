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
                        <h1 class="page-header">Upload Alumni</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <div class="row">
                <div class="col-md-7 col-sm-12">
                <?php if($_GET['bulk']){ ?>
                <div class="alert alert-success alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <strong>Well done!</strong> Import was successfully.
</div>
               <?php } ?>
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
                    <form action="upload.php" method="post" enctype="multipart/form-data" >
						<div class="form-group input-group">
							<span class="input-group-addon">Upload csv</span>
							<input name="csv" type="file" class="form-control" required="required">
						</div>
						<p>Download alumni template <a href="download.php?f=alumni-template.csv">Click to download</a></p>
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
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
								<thead>
									<tr>
									<th>S/N</th>
										<th>Name</th>
										<th>Matric</th>
										<th>Email</th>
										<th>Class</th>
										<th>Course</th>
									</tr>
								</thead>
								<tbody>

<?php
//Query based on button clicked abot 

$query = "select * from alumni order by id desc";
$result = mysqli_query($connect, $query);
$num=mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
$row = mysqli_fetch_array($result)
?>
								<tr class="odd gradeX">
								<td><?php echo $i + 1; ?></td>
								<td><b><?php echo $row['name']; ?></b></td>
								<td><?php echo $row['matric']; ?></td>
								<td><?php echo $row['email']; ?></td>
								<td><?php echo $row['class']; ?></td>
								<td><?php echo $row['course']; ?></td>

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
		$('#dataTables-example2').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
