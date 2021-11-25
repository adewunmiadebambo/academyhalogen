<?php

/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 */
  
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;

get_header(); ?>
<div class="blog-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8">
				<main id="main" class="posts-content" role="main">
					<?php if ( have_posts() ) : ?>

						<?php /* Start the Loop */ ?>
						<?php while ( have_posts() ) : the_post(); ?>

							<?php
							/*
                             * Include the Post-Format-specific template for the content.
                             * If you want to override this in a child theme, then include a file
                             * called content-___.php (where ___ is the Post Format name) and that will be used instead.
                             */
							get_template_part( 'template-parts/content', get_post_format() );
							?>

						<?php endwhile; ?>

						<?php threesixtyblog_lite_posts_navigation(); ?>

					<?php else : ?>

						<?php get_template_part( 'template-parts/content', 'none' ); ?>

					<?php endif; ?>
				</main><!-- .posts-content -->
			</div> <!-- .col-## -->

			<!-- Sidebar -->
			<?php get_sidebar(); ?>

		</div> <!-- .row -->
	</div> <!-- .container -->
</div> <!-- .blog-wrapper -->
<?php get_footer(); ?>