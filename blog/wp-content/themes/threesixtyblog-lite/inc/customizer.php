<?php
/**
 * Threesixtyblog: Customizer
 */

if (! function_exists('threesixtyblog_lite_customize_register')) :

	function threesixtyblog_lite_customize_register( $wp_customize ) {
		
		$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
		$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';

		if ( isset( $wp_customize->selective_refresh ) ) {
			$wp_customize->selective_refresh->add_partial( 'blogname', array(
				'selector' 				=> '.site-title a',
				'container_inclusive' 	=> false,
				'render_callback' 		=> 'threesixtyblog_lite_customize_partial_blogname',
			) );
			$wp_customize->selective_refresh->add_partial( 'blogdescription', array(
				'selector' 				=> '.site-description',
				'container_inclusive' 	=> false,
				'render_callback' 		=> 'threesixtyblog_lite_customize_partial_blogdescription',
			) );
		}

		$color_scheme = threesixtyblog_lite_get_color_scheme();

		// Add color scheme setting and control.
		$wp_customize->add_setting( 'color_scheme', array(
			'default'           => 'default',
			'sanitize_callback' => 'threesixtyblog_lite_sanitize_color_scheme',
			'transport'         => 'postMessage',
			'capability' 		=> 'edit_theme_options',
		) );

		$wp_customize->add_control( 'color_scheme', array(
			'label'    => esc_html__( 'Base Color Scheme', 'threesixtyblog-lite' ),
			'section'  => 'colors',
			'type'     => 'select',
			'choices'  => threesixtyblog_lite_get_color_scheme_choices(),
			'priority' => 1,
		) );

		// Add accent color setting and control.
		$wp_customize->add_setting( 'accent_color', array(
			'default'           => $color_scheme[1],
			'sanitize_callback' => 'sanitize_hex_color',
			'transport'         => 'postMessage',
			'capability' 		=> 'edit_theme_options',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'accent_color', array(
			'label'       => esc_html__( 'Brand Color', 'threesixtyblog-lite' ),
			'section'     => 'colors',
		) ) );

		// Add link color setting and control.
		$wp_customize->add_setting( 'link_color', array(
			'default'           => $color_scheme[2],
			'sanitize_callback' => 'sanitize_hex_color',
			'transport'         => 'postMessage',
			'capability' 		=> 'edit_theme_options',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'link_color', array(
			'label'       => esc_html__( 'Link Color', 'threesixtyblog-lite' ),
			'section'     => 'colors',
		) ) );

		// Add main text color setting and control.
		$wp_customize->add_setting( 'main_text_color', array(
			'default'           => $color_scheme[3],
			'sanitize_callback' => 'sanitize_hex_color',
			'transport'         => 'postMessage',
			'capability' 		=> 'edit_theme_options',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'main_text_color', array(
			'label'       => esc_html__( 'Main Text Color', 'threesixtyblog-lite' ),
			'section'     => 'colors',
		) ) );


		$wp_customize->add_panel('tt_copyright_panel', array(
			'description' 	=> esc_html__('Add footer copyright and color options', 'threesixtyblog-lite'),
			'title' 		=> esc_html__('Footer Area', 'threesixtyblog-lite')
		));

		// Copyright Setting
		$wp_customize->add_section( 'tt_copyright_section' , array(
			'title'     => esc_html__( 'Copyright', 'threesixtyblog-lite' ),
			'panel' 	=> 'tt_copyright_panel'
		));


		// Footer Copyright Text Edit
		$wp_customize->add_setting( 'tt_copyright_setting', array( 
			'default' 			=>  '',
			'sanitize_callback' => 'threesixtyblog_lite_sanitize_text',
			'transport'     	=> 'postMessage',
			'capability' 		=> 'edit_theme_options',
		));

		$wp_customize->add_control( 'tt_copyright_setting', array(
			'label'    	=> esc_html__( 'Change Copyright Text', 'threesixtyblog-lite' ),
			'section' 	=> 'tt_copyright_section',
			'settings' 	=> 'tt_copyright_setting',
			'type'		=> 'textarea',
		));


		// Copyright Setting
		$wp_customize->add_section( 'tt_footer_color_section' , array(
			'title'     => esc_html__( 'Footer color options', 'threesixtyblog-lite' ),
			'panel'		=> 'tt_copyright_panel'
		));


		// Footer Background Color
		$wp_customize->add_setting( 'tt_copyright_bg', array( 
			'label'       		=> esc_html__( 'Footer Background Color', 'threesixtyblog-lite' ),
			'default'           => '#021634',
			'sanitize_callback' => 'sanitize_hex_color',
			'transport'     	=> 'postMessage',
			'capability' 		=> 'edit_theme_options',
		));

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'tt_copyright_bg', array(
			'label'    	=> esc_html__( 'Footer Background Color', 'threesixtyblog-lite' ),
			'section'  	=> 'tt_footer_color_section',
			'settings' 	=> 'tt_copyright_bg',
		)));

		// Footer Text Color
		$wp_customize->add_setting( 'tt_copyright_text_color', array( 
			'label'       	=> esc_html__( 'Footer Text Color', 'threesixtyblog-lite' ),
			'default'       => '#fff',
			'sanitize_callback' => 'sanitize_hex_color',
			'transport'     => 'postMessage',
			'capability' 	=> 'edit_theme_options',
		));

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'tt_copyright_text_color', array(
			'label'    	=> esc_html__( 'Footer Text Color', 'threesixtyblog-lite' ),
			'section'  	=> 'tt_footer_color_section',
			'settings' 	=> 'tt_copyright_text_color',
		)));


		// preloader
		$wp_customize->add_section( 'tt_preloader_section' , array(
			'title'       => esc_html__( 'Preloader', 'threesixtyblog-lite' ),
		));

		$wp_customize->add_setting( 'tt_preloader_setting', array(
			'sanitize_callback' => 'esc_url_raw', 
			'capability' 		=> 'edit_theme_options',
			'default' 			=> get_template_directory_uri() . '/images/preloader.gif'
		));

		$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'threesixtyblog_lite_preloader', array(
			'label'    	=> esc_html__( 'Image', 'threesixtyblog-lite' ),
			'section'  	=> 'tt_preloader_section',
			'settings' 	=> 'tt_preloader_setting',
			'priority'	=> 1,
		)));
	}
	add_action( 'customize_register', 'threesixtyblog_lite_customize_register', 11 );
endif;

/**
 * Render the site title for the selective refresh partial.
 */
function threesixtyblog_lite_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 */
function threesixtyblog_lite_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Registers color schemes for threesixtyblog
 *
 */
function threesixtyblog_lite_get_color_schemes() {
	return apply_filters( 'threesixtyblog_lite_color_schemes', array(
		'default' => array(
			'label'  => esc_html__( 'Default', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#ffcc00',
				'#2ecc71',
				'#545353'
			)
		),
		'red' => array(
			'label'  => esc_html__( 'Red', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#F44336',
				'#2ecc71',
				'#545353'
			)
		),
		'pink' => array(
			'label'  => esc_html__( 'Pink', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#E91E63',
				'#2ecc71',
				'#545353'
			)
		),
		'purple' => array(
			'label'  => esc_html__( 'Purple', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#9C27B0',
				'#2ecc71',
				'#545353'
			)
		),
		'blue' => array(
			'label'  => esc_html__( 'Blue', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#2196F3',
				'#2ecc71',
				'#545353'
			)
		),
		'green' => array(
			'label'  => esc_html__( 'Green', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#4CAF50',
				'#2ecc71',
				'#545353'
			)
		),
		'yellow' => array(
			'label'  => esc_html__( 'Yellow', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#FFEB3B',
				'#2ecc71',
				'#545353'
			)
		),
		'deep-orange' => array(
			'label'  => esc_html__( 'Deep Orange', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#FF5722',
				'#2ecc71',
				'#545353'
			)
		),
		'brown' => array(
			'label'  => esc_html__( 'Brown', 'threesixtyblog-lite' ),
			'colors' => array(
				'#f1f5f5',
				'#795548',
				'#2ecc71',
				'#545353'
			)
		)
	) );
}



/**
 * Retrieves the current Twenty Sixteen color scheme.
 */
if ( ! function_exists( 'threesixtyblog_lite_get_color_scheme' ) ) :
	function threesixtyblog_lite_get_color_scheme() {
		$color_scheme_option = get_theme_mod( 'color_scheme', 'default' );
		$color_schemes       = threesixtyblog_lite_get_color_schemes();

		if ( array_key_exists( $color_scheme_option, $color_schemes ) ) {
			return $color_schemes[ esc_html($color_scheme_option)]['colors'];
		}

		return $color_schemes['default']['colors'];
	}
endif;


/**
 * Retrieves an array of color scheme choices registered for Twenty Sixteen.
 */
if ( ! function_exists( 'threesixtyblog_lite_get_color_scheme_choices' ) ) :
	function threesixtyblog_lite_get_color_scheme_choices() {
		$color_schemes                = threesixtyblog_lite_get_color_schemes();
		$color_scheme_control_options = array();

		foreach ( $color_schemes as $color_scheme => $value ) {
			$color_scheme_control_options[ $color_scheme ] = $value['label'];
		}
		return $color_scheme_control_options;
	}
endif;


/**
 * Handles sanitization for Twenty Sixteen color schemes.
 */
if ( ! function_exists( 'threesixtyblog_lite_sanitize_color_scheme' ) ) :
	function threesixtyblog_lite_sanitize_color_scheme( $value ) {
		$color_schemes = threesixtyblog_lite_get_color_scheme_choices();

		if ( ! array_key_exists( $value, $color_schemes ) ) {
			return 'default';
		}

		return $value;
	}
endif;

/**
 * Enqueues front-end CSS for color scheme.
 */
function threesixtyblog_lite_color_scheme_css() {
	$color_scheme_option = get_theme_mod( 'color_scheme', 'default' );

	// Don't do anything if the default color scheme is selected.
	if ( 'default' === $color_scheme_option ) {
		return;
	}

	$color_scheme = threesixtyblog_lite_get_color_scheme();

	// Convert main text hex color to rgba.
	$accent_rgb = threesixtyblog_lite_hex2rgb( $color_scheme[1] );

	// If the rgba values are empty return early.
	if ( empty( $accent_rgb ) ) {
		return;
	}

	// If we get this far, we have a custom color scheme.
	$colors = array(
		'background_color' => $color_scheme[0],
		'accent_color' 			=> $color_scheme[1],
		'link_color'            => $color_scheme[2],
		'main_text_color'       => $color_scheme[3],
		'rgba_color'			=> vsprintf( 'rgba( %1$s, %2$s, %3$s, 0.9)', $accent_rgb )
	);

	$color_scheme_css = threesixtyblog_lite_get_color_scheme_css( $colors );

	wp_add_inline_style( 'threesixtyblog-style', $color_scheme_css );
}
add_action( 'wp_enqueue_scripts', 'threesixtyblog_lite_color_scheme_css' );


/**
 * Binds the JS listener to make Customizer color_scheme control.
 */
function threesixtyblog_lite_customize_control_js() {
	wp_enqueue_script( 'threesixtyblog-lite-color-scheme-control', get_template_directory_uri() . '/js/color-scheme-control.js', array( 'customize-controls', 'iris', 'underscore', 'wp-util' ), '20160816', true );
	wp_localize_script( 'threesixtyblog-lite-color-scheme-control', 'threesixtyblogLiteColorScheme', threesixtyblog_lite_get_color_schemes() );
}
add_action( 'customize_controls_enqueue_scripts', 'threesixtyblog_lite_customize_control_js' );

/**
 * Binds JS handlers to make the Customizer preview reload changes asynchronously.
 */
function threesixtyblog_lite_customize_preview_js() {
	wp_enqueue_script( 'threesixtyblog-customize-preview', get_template_directory_uri() . '/js/customize-preview.js', array( 'customize-preview' ), '20160816', true );
}
add_action( 'customize_preview_init', 'threesixtyblog_lite_customize_preview_js' );

/**
 * Returns CSS for the color schemes.
 */
function threesixtyblog_lite_get_color_scheme_css( $colors ) {
	$colors = wp_parse_args( $colors, array(
		'background_color' => '',
		'accent_color'          => '',
		'link_color'            => '',
		'main_text_color'       => ''
	) );

	return <<<CSS

	/* Background Color */
	body {
		background-color: {$colors['background_color']};
	}

	/* Link Color */
	a{
		color: {$colors['link_color']};
	}

	/* Main Text Color */
	body{
		color: {$colors['main_text_color']};
	}

	.navbar-default .navbar-nav li.current-menu-ancestor>a,
	.navbar-default .navbar-nav li.current-menu-parent>a,
	.navbar-default .navbar-nav li.current-menu-item>a{
		color: {$colors['accent_color']} !important;
	}
	
	.navbar-default .navbar-nav li a:focus,
	.navbar-default .navbar-nav li a:hover,
	.navbar-default .navbar-nav>.active>a, 
	.navbar-default .navbar-nav>.active>a:focus, 
	.navbar-default .navbar-nav>.active>a:hover,
	.navbar-default .navbar-nav>.open>a, 
	.navbar-default .navbar-nav>.open>a:focus,
	.navbar-default .navbar-nav>.open>a:hover,
	.dropdown-menu>.active>a, 
	.dropdown-menu>.active>a:focus, 
	.dropdown-menu>.active>a:hover,
	.dropdown-menu>li>a:focus, 
	.dropdown-menu>li>a:hover,
	.slider-contant-cat a:hover,
	.carousel-control:focus, 
	.carousel-control:hover,
	.single-post .entry-footer .post-tags ul li a:hover,
	#toTop {
		color: {$colors['accent_color']};
	}

	.slider-contant-cat a,
	.carousel-control,
	.entry-header .entry-meta li .posted-in a,
	.blog .featured-wrapper .post-meta, 
	.archive .featured-wrapper .post-meta,
	.blog-navigation a:hover,
	.comments-wrapper .form-submit input, 
	.post-password-form input[type=submit],
	.navbar-default .navbar-toggle:focus, 
	.navbar-default .navbar-toggle:hover,
	#toTop:hover {
		background-color: {$colors['accent_color']};
	}


	.form-control:focus,
	.navbar-default .navbar-toggle:focus, 
	.navbar-default .navbar-toggle:hover,
	.pagination .current,
	.pagination>.active>a,
	.pagination>.active>span,
	.pagination>.active>a:hover,
	.pagination>.active>span:hover,
	.pagination>.active>a:focus,
	.pagination>.active>span:focus,
	.blog-navigation a:hover,
	.comments-wrapper .form-submit input, 
	.post-password-form input[type=submit],
	#toTop{
		border-color: {$colors['accent_color']};
	}

	@media(max-width : 767px) {
		.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus, 
	    .navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,
	    .navbar-default .navbar-nav .open .dropdown-menu>.active>a, 
	    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus, 
	    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,
	    .dropdown-menu-trigger.menu-collapsed{
	    	color: {$colors['accent_color']};
	    }

	    .dropdown-menu-trigger.menu-collapsed{
	        border-color: {$colors['accent_color']};
	    }
	}

CSS;
}


/**
 * Outputs an Underscore template for generating CSS for the color scheme.
 */
function threesixtyblog_lite_color_scheme_css_template() {
	$colors = array(
		'background_color' => '{{ data.background_color }}',
		'accent_color'       	=> '{{ data.accent_color }}',
		'link_color'            => '{{ data.link_color }}',
		'main_text_color'  		=> '{{ data.main_text_color }}',
		'rgba_color'	  		=> '{{ data.rgba_color }}'
	);
	?>
	<script type="text/html" id="tmpl-threesixtyblog-color-scheme">
		<?php echo esc_html(threesixtyblog_lite_get_color_scheme_css( $colors )); ?>
	</script>
	<?php
}
add_action( 'customize_controls_print_footer_scripts', 'threesixtyblog_lite_color_scheme_css_template' );


/**
 * Enqueues front-end CSS for the background color.
 *
**/
function threesixtyblog_lite_background_color_css() {
	$color_scheme          = threesixtyblog_lite_get_color_scheme();
	$default_color         = $color_scheme[0];
	$background_color = get_theme_mod( 'background_color', $default_color );

	// Don't do anything if the current color is the default.
	if ( $background_color === $default_color ) {
		return;
	}

	$css = '
		
	';

	wp_add_inline_style( 'threesixtyblog-style', sprintf( $css, esc_attr($background_color)));
}
add_action( 'wp_enqueue_scripts', 'threesixtyblog_lite_background_color_css', 11 );



/**
 * Enqueues front-end CSS for the accent color.
 *
**/
function threesixtyblog_lite_accent_color_css() {
	$color_scheme          = threesixtyblog_lite_get_color_scheme();
	$default_color         = $color_scheme[1];
	$accent_color = get_theme_mod( 'accent_color', $default_color );

	// Don't do anything if the current color is the default.
	if ( $accent_color === $default_color ) {
		return;
	}

	$css = '
		.navbar-default .navbar-nav li.current-menu-ancestor>a,
		.navbar-default .navbar-nav li.current-menu-parent>a,
		.navbar-default .navbar-nav li.current-menu-item>a{
			color: %1$s !important;
		}


		.navbar-default .navbar-nav li a:focus,
		.navbar-default .navbar-nav li a:hover,
		.navbar-default .navbar-nav>.active>a, 
		.navbar-default .navbar-nav>.active>a:focus, 
		.navbar-default .navbar-nav>.active>a:hover,
		.navbar-default .navbar-nav>.open>a, 
		.navbar-default .navbar-nav>.open>a:focus,
		.navbar-default .navbar-nav>.open>a:hover,
		.dropdown-menu>.active>a, 
		.dropdown-menu>.active>a:focus, 
		.dropdown-menu>.active>a:hover,
		.dropdown-menu>li>a:focus, 
		.dropdown-menu>li>a:hover,
		.slider-contant-cat a:hover,
		.carousel-control:focus, 
		.carousel-control:hover,
		.single-post .entry-footer .post-tags ul li a:hover,
		#toTop {
			color: %1$s;
		}


		.slider-contant-cat a,
		.carousel-control,
		.entry-header .entry-meta li .posted-in a,
		.blog .featured-wrapper .post-meta, 
		.archive .featured-wrapper .post-meta,
		.blog-navigation a:hover,
		.comments-wrapper .form-submit input, 
		.post-password-form input[type=submit],
		.navbar-default .navbar-toggle:focus, 
		.navbar-default .navbar-toggle:hover,
		#toTop:hover {
			background-color: %1$s;
		}


		.form-control:focus,
		.navbar-default .navbar-toggle:focus, 
		.navbar-default .navbar-toggle:hover,
		.pagination .current,
		.pagination>.active>a,
		.pagination>.active>span,
		.pagination>.active>a:hover,
		.pagination>.active>span:hover,
		.pagination>.active>a:focus,
		.pagination>.active>span:focus,
		.blog-navigation a:hover,
		.comments-wrapper .form-submit input, 
		.post-password-form input[type=submit],
		#toTop{
			border-color: %1$s;
		}

		@media(max-width : 767px) {
			.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus, 
		    .navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,
		    .navbar-default .navbar-nav .open .dropdown-menu>.active>a, 
		    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus, 
		    .navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,
		    .dropdown-menu-trigger.menu-collapsed{
		    	color: %1$s;
		    }

		    .dropdown-menu-trigger.menu-collapsed{
		        border-color: color: %1$s;
		    }
		}

	';

	wp_add_inline_style( 'threesixtyblog-style', sprintf( $css, esc_attr($accent_color)));
}
add_action( 'wp_enqueue_scripts', 'threesixtyblog_lite_accent_color_css', 11 );



/**
 * Enqueues front-end CSS for the link color.
 *
**/
function threesixtyblog_lite_link_color_css() {
	$color_scheme          = threesixtyblog_lite_get_color_scheme();
	$default_color         = $color_scheme[2];
	$link_color = get_theme_mod( 'link_color', $default_color );

	// Don't do anything if the current color is the default.
	if ( $link_color === $default_color ) {
		return;
	}

	$css = '
		
	';

	wp_add_inline_style( 'threesixtyblog-style', sprintf( $css, esc_attr($link_color)));
}
add_action( 'wp_enqueue_scripts', 'threesixtyblog_lite_link_color_css', 11 );



/**
 * Enqueues front-end CSS for the text color.
 *
**/
function threesixtyblog_lite_text_color_css() {
	$color_scheme          = threesixtyblog_lite_get_color_scheme();
	$default_color         = $color_scheme[3];
	$text_color = get_theme_mod( 'main_text_color', $default_color );

	// Don't do anything if the current color is the default.
	if ( $text_color === $default_color ) {
		return;
	}

	$css = '
		
	';

	wp_add_inline_style( 'threesixtyblog-style', sprintf( $css, esc_attr($text_color)));
}
add_action( 'wp_enqueue_scripts', 'threesixtyblog_lite_text_color_css', 11 );


// sanitize text field
function threesixtyblog_lite_sanitize_text( $input ) {
    return wp_kses_post( force_balance_tags( $input ) );
}