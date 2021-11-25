<?php
/**
 * The template for displaying 404 pages (not found)
 */

if ( ! defined( 'ABSPATH' ) ) :
	exit; // Exit if accessed directly.
endif;

get_header(); ?>

<div class="error-page-wrapper">
	<div class="container">

		<div class="error-message text-center">
			<h2><?php esc_html_e( '404', 'threesixtyblog-lite' ); ?></h2>

			<h3><?php esc_html_e( 'Page Not Found!', 'threesixtyblog-lite' ); ?></h3>

			<p><?php esc_html_e( 'Sorry, we couldn\'t find the content you were looking for.', 'threesixtyblog-lite' ); ?></p>

			<a href="<?php echo esc_url( home_url( '/' ) );?>"><?php esc_html_e( 'Back Home', 'threesixtyblog-lite' ); ?></a>
		</div> <!-- /notfound-page -->

	</div><!-- /.container -->
</div> <!-- /.content-wrapper -->
<?php get_footer(); ?>
