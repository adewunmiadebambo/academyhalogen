<?php if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly.
endif; ?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php esc_url( bloginfo( 'pingback_url' ) ); ?>">
    <?php wp_head(); ?>
</head>

<body id="home" <?php body_class(); ?> data-spy="scroll" data-target=".navbar" data-offset="100">
    <?php $preloader = get_theme_mod('tt_preloader_setting', get_template_directory_uri().'/images/preloader.gif'); ?>
    <div id="preloader">
        <div id="status">
            <div class="status-mes" style="background-image: url(<?php echo esc_url($preloader);?>)"></div>
        </div>
    </div>

    <div class="header-wrapper">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">                
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mobile-toggle">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <div class="navbar-brand">
                        <h1 class="site-title">
                            <?php if ( function_exists( 'the_custom_logo' ) && has_custom_logo() ) : ?>
                                <?php the_custom_logo(); ?>
                            <?php else : ?>
                                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" title="<?php bloginfo( 'name' ); ?>">
                                    <?php esc_html(bloginfo( 'name' )); ?>
                                </a>
                                <p class="site-description"><?php esc_html(bloginfo( 'description' )); ?></p>
                            <?php endif; ?>
                        </h1>
                    </div> <!-- .navbar-brand -->
                </div> <!-- .navbar-header -->

                <div class="main-menu-wrapper clearfix">
                    <div id="mobile-toggle" class="main-menu collapse navbar-collapse">                   
                        <?php wp_nav_menu( apply_filters( 'threesixtyblog_lite_primary_wp_nav_menu', array(
                            'container'      => false,
                            'theme_location' => 'primary',
                            'items_wrap'     => '<ul id="%1$s" class="%2$s nav navbar-nav navbar-right">%3$s</ul>',
                            'walker'         => new ThreeSixtyBlogLite_Navwalker(),
                            'fallback_cb'    => 'ThreeSixtyBlogLite_Navwalker::fallback'
                        ))); ?>
                    </div>
                </div> <!-- /navbar-collapse -->
            </div><!-- .container-->
        </nav>
    </div> <!-- .header-wrapper -->

    <div class="custom-header-media">
        <div class="container">
            <?php the_custom_header_markup(); ?>
        </div>
    </div>

<?php get_template_part( 'page', 'header' );