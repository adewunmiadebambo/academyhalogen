<?php
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;
?>

<article id="post-<?php the_ID(); ?>" <?php post_class('post-wrapper'); ?>>
	<div class="blog-content">
		<header class="entry-header">
			<?php
				if ( is_single() ) :
					the_title( '<h2 class="entry-title">', '</h2>' );
				else :
					the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
				endif;
			?>
			
			<div class="entry-meta">
				<?php threesixtyblog_lite_posted_on(); ?>
			</div><!-- .entry-meta -->
		</header><!-- .entry-header -->

		<div class="entry-content">
			<?php 
				if (is_single() || !has_excerpt()) :
					the_content( '<span class="readmore">' . esc_html__( 'Read More', 'threesixtyblog-lite' ) . '</span>' );
				else :
					the_excerpt();
				endif;

				wp_link_pages(array(
		            'before'      => '<div class="page-pagination"><span class="page-links-title">' . esc_html__('Pages:', 'threesixtyblog-lite') . '</span>',
		            'after'       => '</div>',
		            'link_before' => '<span>',
		            'link_after'  => '</span>',
		        ));
			?>
	    </div><!-- .entry-content -->
    </div><!-- /.blog-content -->

</article><!-- #post-## -->