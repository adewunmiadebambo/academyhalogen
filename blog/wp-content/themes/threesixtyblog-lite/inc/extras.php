<?php
if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly.
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Adds custom classes to the array of body classes.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if ( ! function_exists( 'threesixtyblog_lite_body_classes' ) ) :
	function threesixtyblog_lite_body_classes( $classes ) {
		// Adds a class of group-blog to blogs with more than 1 published author.
		if (has_custom_logo()) {
			$classes[] = 'has-custom-logo';
		} else {
			$classes[] = 'no-custom-logo';
		}
		if ( is_multi_author() ) {
			$classes[] = 'group-blog';
		}
		// Adds a class of hfeed to non-singular pages.
		if ( ! is_singular() ) {
			$classes[] = 'hfeed';
		}
		return $classes;
	}
	add_filter( 'body_class', 'threesixtyblog_lite_body_classes' );
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=--=--=--=-
// Add a pingback url auto-discovery header for singularly identifiable articles.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=--=--=--=-
if (!function_exists('threesixtyblog_lite_pingback_header')) :
	function threesixtyblog_lite_pingback_header() {
		if ( is_singular() && pings_open() ) {
			echo '<link rel="pingback" href="', esc_url( get_bloginfo( 'pingback_url' ) ), '">';
		}
	}
	add_action( 'wp_head', 'threesixtyblog_lite_pingback_header' );
endif;


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Get our wp_nav_menu() fallback, wp_page_menu(), to show a home link.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

if ( ! function_exists( 'threesixtyblog_lite_page_menu_args' ) ) :
	function threesixtyblog_lite_page_menu_args( $args ) {
		$args[ 'show_home' ] = TRUE;
		return $args;
	}
	add_filter( 'wp_page_menu_args', 'threesixtyblog_lite_page_menu_args' );
endif;