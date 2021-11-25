
<div id="client">
	<div class="container">
    	<div class="row">
        	<div class="col-md-12">  
            	<h1>PARTNERS / AFFILIATES</h1>
               <p></p>
                <div class="client" id="clients">
                    <div id="owl-demo">                    

					<?php

						$query = "select * from client where status = 'partner' order by id asc";

						$result = mysqli_query($connect, $query);

						$num = mysqli_num_rows($result);

						for($i=0; $i<$num; $i++)

						{

							$row = mysqli_fetch_array($result);

						?>

                    <div class="item" align="center"><img src="acms/pages/uploads/<?php echo $row['image_url']; ?>" class="img-responsive" alt=""></div>  

					<?php

						}

						?>

						

						

                    </div>            
                </div>
            </div>
        </div>
    </div>


<script>

 $(function() {
      $("#owl-demo").owlCarousel({
        autoPlay: 3000,
        items : 5,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,3]
      });

    });
</script>
</div>