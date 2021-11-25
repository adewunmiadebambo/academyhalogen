<?php 
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;

get_header(); ?>
<div class="page-wrapper content-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8">
				<main id="main" class="posts-content" role="main">
					
					<?php while ( have_posts() ) : the_post(); ?>

						<?php get_template_part( 'template-parts/content', 'page' ); ?>

						<?php if ( comments_open() || get_comments_number() ) :
							comments_template();
						endif; ?>

					<?php endwhile; // End of the loop. ?>

				</main> <!-- .posts-content -->
			</div> <!-- .col-## -->

			<!-- Page sidebar -->
			<?php get_sidebar('page'); ?>

		</div> <!-- .row -->	
	</div> <!-- .container -->
</div> <!-- .content-wrapper -->
<?php get_footer(); ?>