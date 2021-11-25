<?php 
/**
 * Twenty Seventeen functions and definitions
 */

if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// admin-init, metabox, bootstrap-navwalker
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
	require get_template_directory() . "/inc/tt-navwalker.php";

if (!function_exists('threesixtyblog_lite_theme_setup')) :

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Sets up theme defaults and registers support for various WordPress features.
// Note that this function is hooked into the after_setup_theme hook, which
// runs before the init hook. The init hook is too late for some features, such
// as indicating support for post thumbnails.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

    function threesixtyblog_lite_theme_setup(){
       
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Make theme available for translation.
        // Translations can be filed in the /languages/ directory.
        // If you're building a theme based on threesixtyblog, use a find and replace
        // to change 'threesixtyblog-lite' to the name of your theme in all the template files
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        load_theme_textdomain('threesixtyblog-lite', get_template_directory() . '/languages');
        

        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Add default posts and comments RSS feed links to head.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support('automatic-feed-links');


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Supporting title tag
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support('title-tag');


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Enable support for Post Thumbnails on posts and pages.
        // See: https://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-          
        add_theme_support('post-thumbnails');


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // default post thumbnail size
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        set_post_thumbnail_size(1140);
        
        add_image_size('threesixtyblog-blog-thumbnail', 330, 280, TRUE);
        add_image_size('threesixtyblog-single-post-thumbnail', 1170, 500, TRUE);

        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // This theme uses wp_nav_menu() in one locations.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        register_nav_menus(array(
           'primary' => esc_html__('Primary Menu', 'threesixtyblog-lite'),
        ) );


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Switch default core markup for search form, comment form, and comments
        // to output valid HTML5.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support('html5', array('search-form', 'comment-form', 'comment-list', 'gallery', 'caption' ));


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Enable support for Post Formats.
        // See: https://codex.wordpress.org/Post_Formats
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-          
        add_theme_support('post-formats', array('aside', 'status', 'image', 'audio', 'video', 'gallery', 'quote', 'link', 'chat' ));

        
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Add theme support for Custom Logo.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
       /* add_theme_support( 'custom-logo', array(
            'width'       => 160,
            'height'      => 32,
            'flex-width'  => true
        ) );*/
		 add_theme_support( 'custom-logo', array(
            'width'       => 100,
            'height'      => 114,
            'flex-width'  => true
        ) );


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Set up the WordPress core custom background feature.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support( 'custom-background', apply_filters( 'threesixtyblog_lite_custom_background_args', array(
            'default-color' => 'f1f5f5',
            'default-image' => ''
        ) ) );

        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Add theme support custom header
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support( 'custom-header', apply_filters( 'threesixtyblog_lite_custom_header_args', array(
            'default-image'             => '',
            'header-text'               => '',
            'default-text-color'        => '',
            'width'                     => 1140,
            'height'                    => 230,
            'flex-width'                => true,
            'flex-height'               => true,
            'wp-head-callback'          => '',
            'admin-head-callback'       => '',
            'video'                     => true
        ) ) );

        
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Add theme support for selective refresh for widgets.
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        add_theme_support( 'customize-selective-refresh-widgets' );


        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Support editor style
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

        add_editor_style( array( 'css/editor-style.css', 'css/font-awesome.css'));
        
    }

    add_action('after_setup_theme', 'threesixtyblog_lite_theme_setup');

endif; // threesixtyblog_lite_theme_setup


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Set the content width in pixels, based on the theme's design and stylesheet.
// Priority 0 to make it available to lower priority callbacks.
// @global int $content_width
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
if (!function_exists('threesixtyblog_lite_content_width')) :
    function threesixtyblog_lite_content_width() {
        $GLOBALS['content_width'] = apply_filters( 'threesixtyblog_lite_content_width', 1140 );
    }
    add_action( 'after_setup_theme', 'threesixtyblog_lite_content_width', 0 );
endif;
    

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Register widget area.
// @link https://codex.wordpress.org/Function_Reference/register_sidebar
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
if (!function_exists('threesixtyblog_lite_widgets_init')) :

    function threesixtyblog_lite_widgets_init() {

    	do_action('threesixtyblog_lite_before_register_sidebar');

        register_sidebar( apply_filters( 'threesixtyblog_lite_blog_sidebar', array(
            'name'          => esc_html__('Blog Sidebar', 'threesixtyblog-lite'),
            'id'            => 'threesixtyblog-blog-sidebar',
            'description'   => esc_html__('Appears in the blog sidebar.', 'threesixtyblog-lite'),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )));

        register_sidebar( apply_filters( 'threesixtyblog_lite_page_sidebar', array(
            'name'          => esc_html__('Page Sidebar Area', 'threesixtyblog-lite'),
            'id'            => 'threesixtyblog-page-sidebar',
            'description'   => esc_html__('Appears in the Page sidebar.', 'threesixtyblog-lite'),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )));

        do_action('threesixtyblog_lite_after_register_sidebar');
    }

    add_action('widgets_init', 'threesixtyblog_lite_widgets_init');
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Load Google Font If Redux framework is not activated.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if ( ! function_exists( 'threesixtyblog_lite_fonts_url' ) ):
    function threesixtyblog_lite_fonts_url() {
        $font_url = '';

        $bitter = esc_html_x( 'on', 'Bitter font: on or off', 'threesixtyblog-lite' );

        $raleway = esc_html_x( 'on', 'Raleway font: on or off', 'threesixtyblog-lite' );

        if ( 'off' !== $bitter || 'off' !== $raleway ) {
            $font_families = array();

            if ( 'off' !== $bitter ) {
                $font_families[] = 'Bitter:400,400i,700';
            }

            if ( 'off' !== $raleway ) {
                $font_families[] = 'Raleway:400,500,600,700,900';
            }

            $query_args = array(
                'family' => urlencode( implode( '|', $font_families ) ),
                'subset' => urlencode( 'latin,latin-ext' ),
            );

            $font_url = add_query_arg( $query_args, '//fonts.googleapis.com/css' );
        }

        return esc_url_raw( $font_url );
    }
endif;

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Enqueue scripts and styles.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
if (!function_exists('threesixtyblog_lite_scripts')) :
    
    function threesixtyblog_lite_scripts() {

        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // Styles
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        wp_enqueue_style('threesixtyblog-google-font', threesixtyblog_lite_fonts_url(), array(), NULL);
        wp_enqueue_style('animate-css', get_template_directory_uri() . '/css/animate.css', array(), NULL);
        wp_enqueue_style('font-awesome', get_template_directory_uri() . '/css/font-awesome.css', array(), '4.6.3');
        wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.css', array(), '3.3.7');
        wp_enqueue_style('stylesheet', get_stylesheet_uri());
        
        // custom theme stylesheet.
        wp_enqueue_style( 'threesixtyblog-style', get_template_directory_uri() . '/css/style.css', array(), NULL);

        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        // scripts
        // -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.js', array('jquery'), '3.3.7', TRUE);
        wp_enqueue_script('sticky', get_template_directory_uri() . '/js/jquery.sticky.js', array('jquery'), NULL, TRUE);
        wp_enqueue_script('touchswipe', get_template_directory_uri() . '/js/jquery.touchSwipe.js', array('jquery'), NULL, TRUE);
        wp_enqueue_script( 'jquery-masonry' );
        wp_enqueue_script('threesixtyblog-scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'), NULL, TRUE);

        if (is_singular() && comments_open() && get_option('thread_comments')) {
            wp_enqueue_script('comment-reply');
        }
    }

    add_action('wp_enqueue_scripts', 'threesixtyblog_lite_scripts');
endif;



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Customize video play/pause button in the custom header.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
function threesixtyblog_lite_video_controls( $settings ) {
    $settings['l10n']['play'] = '<span class="screen-reader-text">' . esc_html__( 'Play background video', 'threesixtyblog-lite' ) . '</span>'.'<i class="fa fa-play-circle-o"></i>';
    $settings['l10n']['pause'] = '<span class="screen-reader-text">' . esc_html__( 'Pause background video', 'threesixtyblog-lite' ) . '</span>'.'<i class="fa fa-pause-circle-o"></i>';
    return $settings;
}
add_filter( 'header_video_settings', 'threesixtyblog_lite_video_controls' );



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Custom template tags for this theme.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
require get_template_directory() . "/inc/template-tags.php";

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Custom functions that act independently of the theme templates.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
require get_template_directory() . "/inc/extras.php";

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// WP Customizer file.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
require get_template_directory() . "/inc/customizer.php";