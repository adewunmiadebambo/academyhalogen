<?php
/*
Template Name: Home
*/

if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;

get_header(); ?>
	
	<div class="section-wrapper clearfix">
		<?php while ( have_posts() ) : the_post(); ?>

			<?php the_content(); ?>

		<?php endwhile; // End of the loop. ?>
	</div>
	
<?php get_footer(); ?>