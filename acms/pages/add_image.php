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
    <![endif]-->
<style>
.tooltip {
    position: relative;
    display: inline-block;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 140px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px;
    position: absolute;
    z-index: 1;
    bottom: 150%;
    left: 50%;
    margin-left: -75px;
    opacity: 0;
    transition: opacity 0.3s;
}

.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}
</style><script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>
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
                        <h1 class="page-header">Image Manager</h1>
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
				
				<form action="proc-add-image.php" method="post" enctype="multipart/form-data" >
					<div class="form-group input-group">
						<span class="input-group-addon">Title</span>
						<input name="title" type="text" class="form-control" placeholder="Enter Image Title" required="required" value="<?php echo $title; ?>">
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon">Upload Picture</span>
						<input name="userfile" type="file" class="form-control">
					</div>

					<div class="form-group input-group">
						<input type="submit" class="btn btn-primary" value="Add Image">
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
                           View Gallery
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Image</th>
                                            <th>Title / Copy img URL</th>
                                            <th>Image Size</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                <tbody>

<?php
$query = "select * from image_manager order by id desc";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
	$row = mysqli_fetch_array($result)
?>
								<tr class="odd gradeX">
								<td><img src="uploads/<?php echo $row['filename']; ?>" class="img-responsive" width="200"></td>
								<td width="30%"><a href="edit_image.php?q=<?php echo base64_encode($row['id']); ?>"><?php echo $row['title']; ?></a>
								<br>
								
								<p id="ddd<?php echo $row['id']; ?>">acms/pages/uploads/<?php echo $row['filename']; ?>
								<button title="Copy to clipboard" onclick="copyToClipboard('#ddd<?php echo $row['id']; ?>')"><i class="fa fa-x2 fa-copy"></i></button>					</p>			
								
								</td>
								<td><?php echo $row['file_size']; ?></td>


								<td><a href="edit_image.php?q=<?php echo base64_encode($row['id']); ?>">
								<input type="button" value="Edit Image" /></a> 

								<a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('image_manager'); ?>&return_url=<?php echo base64_encode('add_image.php'); ?>"><input type="button" value="Delete" /></a>
								</a>
								</td>
								
<script>
function copyToClipboard(element) {
  var $temp = $("<input>");
	alert('Copied');
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}

</script>
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
