<?php
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif; ?>

<?php if ( is_active_sidebar( 'threesixtyblog-blog-sidebar' ) ) { ?>
	<div class="col-md-4 col-sm-4">
	    <div class="tt-sidebar-wrapper right-sidebar" role="complementary">
	        <?php dynamic_sidebar('threesixtyblog-blog-sidebar'); ?>
	    </div>
	</div>
<?php } ?>