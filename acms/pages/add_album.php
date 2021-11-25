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
                        <h1 class="page-header">Album Management</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <h3>Add Album</h3>


                <div class="row">
                <div class="col-md-6 col-sm-12">
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
                    <form action="proc-add-album.php" enctype="multipart/form-data" method="post">
						<div class="form-group input-group">
							<span class="input-group-addon">Album Title</span>
							<input name="album_title" placeholder="Add Album Name" type="text" class="form-control" value="<?php echo $album_title; ?>">
						</div>
						<div class="form-group input-group">
							<input type="submit" class="btn btn-primary" value="Add Album">
						</div>

                    </form>
                </div>
                </div>

            </div>
            <!-- /.container-fluid -->
            
            
             <div class="row" style="margin-top:50px;">
                <div class="col-lg-12">
                     
				 	
                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           View Albums
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" value="<?php echo $row['id']; ?>" id="all_id"></th>
                                            <th width="30%">Album Title</th>
                                            <th>-----------------</th>
                                            <th>-----------------</th>
                                            
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                <tbody>

<?php

$query = "select * from gallery_album order by id desc";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
	$row = mysqli_fetch_array($result)
?>
									<tr class="odd gradeX">
										<td><input type="checkbox" value="<?php echo $row['id']; ?>" name="id[]" class="check"> <?php echo $row['id']; ?></td>
										<td><a href="edit_album.php?q=<?php echo base64_encode($row['id']); ?>"><?php echo $row['album_title']; ?></a></td>
										<td></td>
										<td></td>
																				
										
										<td><a href="edit_album.php?q=<?php echo base64_encode($row['id']); ?>">
										<input type="button" value="Edit Album" /></a> 
										
										<a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('gallery_album'); ?>&return_url=<?php echo base64_encode('add_album.php'); ?>&filename=<?php echo base64_encode($row['filename']); ?>&folder=<?php echo base64_encode('gallery_album'); ?>"><input type="button" value="Delete" />
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
                
                </div>
                <!-- /.col-lg-12 -->
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

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
