<?php 
session_start();
include('administrator-session.php');
include('connect.php');
require_once('fns.php');

$query = "select * from contact_form";
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
                        <h1 class="page-header">Demo Request</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <h3>Remove a Demo Request</h3>
                   <br>
            </div>

            <!-- /.container-fluid -->

             <div class="row" style="margin-top:50px;">
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
                                            <th><input type="checkbox" value="<?php echo $row['id']; ?>" name="all_id"></th>
                                            <th>Email</th>
                                            <th>Alt Email</th>
                                            <th>Subject</th>
                                            <th>Course</th>
                                            <th>Message</th>
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
                                            <td><input type="checkbox" value="<?php echo $row['id']; ?>" name="id"></td>
                                            <td><?php echo $row['email']; ?> </td>
                                            <td><?php echo $row['alt_email']; ?> </td>
                                            <td><?php echo $row['subject']; ?> </td>
                                            <td><?php echo $row['course']; ?></td>
                                            <td><?php echo $row['message']; ?></td>
                                            <td><a onClick="return confirm('Are you sure you want to delete this page');" href="del_btn.php?id=<?php echo base64_encode($row['id']); ?>&tab=<?php echo base64_encode('contact_form'); ?>&return_url=<?php echo base64_encode('contact_form.php'); ?>&filename=<?php echo base64_encode($row['filename']); ?>&folder=<?php echo base64_encode('contact'); ?>"><input type="button" value="Delete" /></a></td>
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
