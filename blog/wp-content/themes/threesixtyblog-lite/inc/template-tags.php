<?php
/**
 * Custom template tags for this theme
 *
 * Eventually, some of the functionality here could be replaced by core features.
 */

if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Blog posts navigation
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if (!function_exists('threesixtyblog_lite_posts_navigation')) :

    function threesixtyblog_lite_posts_navigation() { ?>
        <div class="blog-navigation clearfix">
            <?php if (get_next_posts_link()) : ?>
                <div class="col-xs-6 pull-left">
                    <div class="previous-page">
                        <?php next_posts_link('<i class="fa fa-long-arrow-left"></i>' . esc_html('Older Posts', 'threesixtyblog-lite')); ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if (get_previous_posts_link()) : ?>
                <div class="col-xs-6 pull-right">
                    <div class="next-page">
                        <?php previous_posts_link(esc_html__('Newer Posts', 'threesixtyblog-lite') . '<i class="fa fa-long-arrow-right"></i>'); ?>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    <?php }
endif;



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Prints HTML with meta information for the current post-date/time, author & others.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if (!function_exists('threesixtyblog_lite_posted_on_thumb')) :
    function threesixtyblog_lite_posted_on_thumb() { ?>
        <ul class="entry-meta list-inline clearfix">
            <li>
                <span class="posted-in">
                    <?php echo wp_kses(get_the_category_list(), array(
                    'a'      => array(
                        'class' => array(),
                        'href'   => array(),
                        'title'  => array(),
                        'ref'  => array(),
                        'target' => array()
                    ))); ?>
                </span>
            </li>
        
            <li>
                <i class="fa fa-calendar"></i><a href="<?php echo esc_url( get_permalink() ) ?>" rel="bookmark"><?php the_time( get_option( 'date_format' ) ); ?>
                </a>
            </li>

            <?php echo edit_post_link(esc_html__('Edit Post', 'threesixtyblog-lite'), '<li class="edit-link"> <i class="fa fa-pencil"></i>', '</li>') ?>
        </ul>
    <?php
    }
endif;


if (!function_exists('threesixtyblog_lite_posted_on')) :
    function threesixtyblog_lite_posted_on() { ?>
        <ul class="entry-meta list-inline clearfix">
            <?php if (!is_single()) : ?>
                <li>
                    <span class="author vcard">
                        <i class="fa fa-user"></i><?php printf('<a class="url fn n" href="%1$s">%2$s</a>',
                            esc_url(get_author_posts_url(get_the_author_meta('ID'))),
                            esc_html(get_the_author())
                        ) ?>
                    </span>
                </li>
            <?php endif; ?>

            <li>
                <span class="posted-in">
                    <?php echo wp_kses(get_the_category_list(), array(
                    'a'      => array(
                        'class' => array(),
                        'href'   => array(),
                        'title'  => array(),
                        'ref'  => array(),
                        'target' => array()
                    ))); ?>
                </span>
            </li>
        
            <li>
                <i class="fa fa-calendar"></i><a href="<?php echo esc_url( get_permalink() ) ?>" rel="bookmark"><?php the_time( get_option( 'date_format' ) ); ?></a>
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

            <?php echo edit_post_link(esc_html__('Edit Post', 'threesixtyblog-lite'), '<li class="edit-link"> <i class="fa fa-pencil"></i>', '</li>') ?>
        </ul>
    <?php
    }
endif;



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Returns true if a blog has more than 1 category.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if (!function_exists('threesixtyblog_lite_categorized_blog')) :
    function threesixtyblog_lite_categorized_blog() {
        if (false === ($all_the_cool_cats = get_transient('threesixtyblog_lite_categories'))) :
            // Create an array of all the categories that are attached to posts.
            $all_the_cool_cats = get_categories(array(
                'fields'     => 'ids',
                'hide_empty' => 1,
                // We only need to know if there is more than one category.
                'number'     => 2
            ));

            // Count the number of categories that are attached to the posts.
            $all_the_cool_cats = count($all_the_cool_cats);

            set_transient('threesixtyblog_lite_categories', $all_the_cool_cats);
        endif;

        if ($all_the_cool_cats > 1) :
            // This blog has more than 1 category so threesixtyblog_lite_categorized_blog should return true.
            return true;
        else :
            // This blog has only 1 category so threesixtyblog_lite_categorized_blog should return false.
            return false;
        endif;
    }
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Flush out the transients used in threesixtyblog_lite_categorized_blog.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if (!function_exists('threesixtyblog_lite_category_transient_flusher')) :

    function threesixtyblog_lite_category_transient_flusher() {
        if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
            return;
        }
        // Like, beat it. Dig?
        delete_transient( 'threesixtyblog_lite_categories' );
    }
    add_action( 'edit_category', 'threesixtyblog_lite_category_transient_flusher' );
    add_action( 'save_post',     'threesixtyblog_lite_category_transient_flusher' );

endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Search form
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if (!function_exists('threesixtyblog_lite_blog_search_form')) :
    function threesixtyblog_lite_blog_search_form($form) {
        $form = '<form role="search" method="get" id="searchform" class="search-form" action="' . esc_url(home_url('/')) . '">
        <label for="s" class="screen-reader-text">' . esc_html__('Search', 'threesixtyblog-lite') . '</label>
        <input type="text" class="form-control" value="' . get_search_query() . '" name="s" id="s" placeholder="'.esc_attr__('Search', 'threesixtyblog-lite').'"/>
        <button type="submit"><i class="fa fa-search"></i></button>
        <input type="hidden" value="post" name="post_type" />
    </form>';

        return $form;
    }

    add_filter('get_search_form', 'threesixtyblog_lite_blog_search_form');
endif;



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// generate rgba color
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
if (!function_exists('threesixtyblog_lite_hex2rgb')) :
    
    function threesixtyblog_lite_hex2rgb( $color ) {
        $color = trim( $color, '#' );

        if ( strlen( $color ) === 3 ) {
            $r = hexdec( substr( $color, 0, 1 ).substr( $color, 0, 1 ) );
            $g = hexdec( substr( $color, 1, 1 ).substr( $color, 1, 1 ) );
            $b = hexdec( substr( $color, 2, 1 ).substr( $color, 2, 1 ) );
        } else if ( strlen( $color ) === 6 ) {
            $r = hexdec( substr( $color, 0, 2 ) );
            $g = hexdec( substr( $color, 2, 2 ) );
            $b = hexdec( substr( $color, 4, 2 ) );
        } else {
            return array();
        }

        return array( 'red' => $r, 'green' => $g, 'blue' => $b );
    }

endif;