<?php
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;
?>

<article id="post-<?php the_ID(); ?>" <?php post_class('page-content'); ?>>

	<div class="entry-content">
		<?php
			the_content(esc_html__( 'Read More', 'threesixtyblog-lite' ));
			
			wp_link_pages(array(
	            'before'      => '<div class="page-pagination"><span class="page-links-title">' . esc_html__('Pages:', 'threesixtyblog-lite') . '</span>',
	            'after'       => '</div>',
	            'link_before' => '<span>',
	            'link_after'  => '</span>',
	        ));
		?>
    </div><!-- .entry-content -->	

</article> <!-- #post-## -->