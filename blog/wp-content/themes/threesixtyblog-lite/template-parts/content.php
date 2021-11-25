<?php if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif; 

$thumb_size = 'threesixtyblog-blog-thumbnail';
if(is_single()){
    $thumb_size = 'threesixtyblog-single-post-thumbnail';
}

?>

<article id="post-<?php the_ID(); ?>" <?php post_class('post-wrapper'); ?>>
    <?php if ( has_post_thumbnail() ) : ?>
        <header class="featured-wrapper">
            <div class="post-thumbnail">
                <?php do_action( 'threesixtyblog_lite_before_post_thumbnail');

                    the_post_thumbnail($thumb_size, array('alt' => get_the_title(), 'class' => 'img-responsive'));
                    ?>
                    
                <?php do_action( 'threesixtyblog_lite_after_post_thumbnail'); ?>
            </div><!-- .post-thumbnail -->
              <?php if (! is_single()) : ?>
                <ul class="post-meta list-inline">
                    <li>
                        <span class="author vcard">
                            <i class="fa fa-user"></i> <?php printf('<a class="url fn n" href="%1$s">%2$s</a>',
                                esc_url(get_author_posts_url(get_the_author_meta('ID'))),
                                esc_html(get_the_author())
                            ) ?>
                        </span>
                    </li>

                    <li>
                        <span class="post-comments">
                            <i class="fa fa-comments"></i>
                            <?php
                                comments_popup_link(
                                    esc_html__('No Comment', 'threesixtyblog-lite'),
                                    esc_html__('1 Comment', 'threesixtyblog-lite'),
                                    esc_html__('% Comments', 'threesixtyblog-lite'), '',
                                    esc_html__('Comments are closed', 'threesixtyblog-lite')
                                ); 
                            ?>
                        </span>
                    </li>
                </ul>
              <?php endif; ?>

        </header><!-- /.featured-wrapper -->
    <?php endif; ?>

    
    <div class="blog-content">
        <div class="entry-header">
            <?php if ( is_single() ) : ?>
                <div class="post-author">
                    <div class="avatar">
                        <?php
                            echo get_avatar( get_the_author_meta( 'user_email' ), apply_filters( 'threesixtyblog_lite_post_author_avatar_size', 40 ) ); 
                        ?>
                    </div>
                    <?php esc_html_e('By', 'threesixtyblog-lite'); ?><?php printf('<a class="url fn n" href="%1$s">%2$s</a>',
                        esc_url(get_author_posts_url(get_the_author_meta('ID'))),
                        esc_html(get_the_author())
                    ) ?>
                </div>
                <h2 class="entry-title"><?php the_title(); ?></h2>
            <?php endif;

            if(has_post_thumbnail() && !is_single()):
                threesixtyblog_lite_posted_on_thumb();
            else :
                threesixtyblog_lite_posted_on();
            endif;

            if ( !is_single() ) :
                the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
            endif; ?>
        </div><!-- /.entry-header -->

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

        <?php if (is_single()): ?>
            <footer class="entry-footer">
                <div class="post-tags">
                    <?php echo wp_kses(get_the_tag_list('<ul class="list-inline"><i class="fa fa-tag"></i> <li>',' ,</li><li>','</li></ul>'), array(
                        'a'      => array(
                            'class' => array(),
                            'href'   => array(),
                            'title'  => array(),
                            'ref'  => array(),
                            'target' => array()
                        ),
                        'ul'      => array(
                            'class' => array()
                        ),
                        'li'      => array(
                            'class' => array()
                        ),
                        'i'      => array(
                            'class' => array()
                        )
                    )); ?>
                </div> <!-- .post-tags -->
            </footer>
        <?php endif; ?>
    </div><!-- /.blog-content -->
</article>