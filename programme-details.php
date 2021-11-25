<!doctype html>
<html>
<head>
<meta charset="utf-8">
    
<title>Academy Halogen</title>
    
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="dist/css/bootstrap.css">

<link href="dist/font-awesome/css/all.css" rel="stylesheet" type="text/css">

<link rel="icon" href="images/favicon.ico" />

<link href="dist/css/animate.css" rel="stylesheet">

<link href="dist/css/owl.carousel.css" rel="stylesheet">

<link href="dist/css/owl.theme.default.min.css" rel="stylesheet">
    
<script src="dist/js/jquery.3.4.1.min.js"></script>
    
<script src="dist/js/popper.js" type="text/javascript"></script>
    
<script src="dist/js/bootstrap.js" type="text/javascript"></script>

<script src="dist/js/owl.carousel.js"></script>
    
<!-- Main Stylesheet -->

<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">
    
<script src="dist/js/wow.min.js"></script>
<script>
new WOW().init();
</script>

</head>

<body>
    
<?php include('inc/header.php'); ?>
    
<div id="inner">

    <div class="container">
    
        <div class="row">
        
            <div class="col-12">
            
                <h3>SENIOR MANAGEMENT PROGRAMS [SMP]</h3>
            
            </div>
        
        </div>
    
    </div>
    
</div>
    
<div id="program1">

    <div class="container">
    
        <div class="row">
        
            <div class="col-12" align="center">
            
                <h3>Senior Management Programs</h3><p></p>
                
                Our Senior Management Program is a bouquet of specialized competencies designed and tailored to meet the business needs of Business and Industry Leaders, Chief Executives, Diirectors, Top Management and Senior Executvies within the corporate ladder.<p></p> 

                The SMP is a set of programs designed for every decision makerwho sits atop a strategic role within the large to mid-sized organizations. It covers an array of specilized programs specifically focused to deliver overall strategic and enterprise objectives within an establishment.<p></p><br><p></p><br>
            
            </div>
            
            <div class="col-12">
            
                <div>
                
                    <table class="table table-bordered table-striped">
                    
                        <thead>
                        
                            <tr>
                            
                                <th></th>
                            
                                <th>PROGRAM</th>
                            
                                <th>DAYS</th>
                            
                                <th>PRICING</th>
                            
                                <th>PROGRAM DESCRIPTION</th>
                            
                                <th>ACTION</th>
                            
                            </tr>
                        
                        </thead>
                        
                        <tbody>
                            
                            <?php for($i=0; $i<12; $i++){ ?>
                        
                            <tr>
                            
                                <td><?php echo $i+1; ?></td>
                            
                                <td>Introduction to Risk Management [Co-certified by AERMP]</td>
                            
                                <td>1 day</td>
                            
                                <td>N100k</td>
                            
                                <td>This programme will equip participants with the skills to investigate in a corporate setting and also develop and present “SMART” reporting.</td>
                            
                                <td><a href="apply.php"><button class="btn1">Apply now</button></a></td>
                            
                            </tr>
                            
                            <?php } ?>
                        
                        </tbody>
                    
                    </table>
                
                </div>
            
            </div>
        
        </div>
    
    </div>
    
</div>
    
<?php include('inc/footer.php'); ?>
    
</body>
</html>