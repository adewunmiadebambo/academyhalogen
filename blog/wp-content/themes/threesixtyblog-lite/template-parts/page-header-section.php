<?php 
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif; 


$threesixtyblog_lite_query = get_queried_object();

$page_header_title = get_bloginfo('name');

if (is_archive()) :
    if (is_day()) :
        $archive_title = get_the_time('d F, Y');
        $page_header_title = esc_html__('Archive of:', 'threesixtyblog-lite').' '.$archive_title;
    elseif (is_month()) :
        $archive_title = get_the_time('F Y');
        $page_header_title = esc_html__('Archive of:', 'threesixtyblog-lite').' '.$archive_title;
    elseif (is_year()) :
        $archive_title = get_the_time('Y');
        $page_header_title = esc_html__('Archive of:', 'threesixtyblog-lite').' '.$archive_title;
    endif;
endif;

if (is_404()) :
    $page_header_title = esc_html__('404 Not Found', 'threesixtyblog-lite');
endif;

if (is_search()) :
    $page_header_title = esc_html__('Search result for:', 'threesixtyblog-lite').' '.get_search_query();
endif;

if (is_category()) :
    $page_header_title = esc_html__('Category:', 'threesixtyblog-lite').' '.$threesixtyblog_lite_query->name;
endif;

if (is_tag()) :
    $page_header_title = esc_html__('Tag:', 'threesixtyblog-lite').' '.$threesixtyblog_lite_query->name;
endif;

if (is_author()) :
    $page_header_title = esc_html__('Posts of:', 'threesixtyblog-lite').' '.$threesixtyblog_lite_query->display_name;
endif;

if (is_page()) :
    $page_header_title = $threesixtyblog_lite_query->post_title;
endif;

if (is_single()) :
    $page_header_title = get_the_title();
endif;

if (empty($page_header_title)) :
    $page_header_title;
endif; ?>

<!--page title start-->
<section class="page-title text-center"  role="banner">
    <div class="container">
        <h2><?php echo esc_html($page_header_title); ?></h2>
    </div><!-- .container -->
</section> <!-- page-title -->