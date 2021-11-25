<?php 
session_start();
include('connect.php');
include('administrator-session.php');
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

    <title>Oando Coop. |  Admin Area</title>
<link rel="icon" href="favicon.ico" />

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

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Sales/Order</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          View Order List
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <div id="btn_filter">
                            <a href="?status=pending"><input type="button" value="Pending" class="btn btn-danger"></a>
                            <a href="?status=closed"><input type="button" value="Closed" class="btn btn-success"></a>
                        </div>
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Date</th>
                                            <th>Fullname</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Amount</th>
                                            <th>Method</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

<?php
//Query based on button clicked abot 
if($_GET['status'])
{
   $query = "select * from client_order where status = '".$_GET['status']."' order by id desc";
}
else
{
   $query = "select * from client_order order by id desc";
}
$result = mysqli_query($connect,$query);
$num=mysqli_num_rows($result);
for($i=0; $i<$num; $i++)
{
    $row = mysqli_fetch_array($result)
?>
                                        <tr class="odd gradeX">
                                            <td><a href="order_details.php?order_id=<?php echo base64_encode($row['id']); ?>"><?php echo '#0012'.$row['id']; ?></a></td>
                                            <td><?php echo mydate($row['date']); ?></td>
                                            <td><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?></td>
                                            <td><a href="mailto:<?php echo $row['email']; ?>"><?php echo $row['email']; ?></a></td>
                                            <td><?php echo $row['phone']; ?></td>
                                            <td><?php echo $row['address'].', '.$row['city'].', '.$row['state']; ?></td>
                                            <td>N<?php echo $row['amount']; ?></td>
                                            <td><?php echo $row['payment_method']; ?></td>
                                            <td>
                                                <?php if($_GET['status']=='pending'){
                                                    ?>
                                                    <a href="status_btn.php?id=<?php echo base64_encode($row['id']) ?>&tab=<?php echo base64_encode('client_order'); ?>&status=<?php echo base64_encode('closed'); ?>&return_url=<?php echo base64_encode($_SERVER['PHP_SELF']); ?>"><input type="button" value="<?php echo status_change($_GET['status']); ?>" onclick="return confirm('Are you sure you want to change the order status?');"></a>
                                                    <?php
                                                } ?>
                                            <a href="del_btn.php?id=<?php echo base64_encode($row['id']) ?>&tab=<?php echo base64_encode('client_order'); ?>&return_url=<?php echo base64_encode($_SERVER['PHP_SELF']); ?>"><input type="button" value="Delete" onclick="return confirm('Are you sure you want to delete this order?');"></a>
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
            <!-- /.row -->
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
