<?php if ( ! defined( 'ABSPATH' ) ) :
    exit; // Exit if accessed directly
endif; ?>

<footer class="footer-section" style="background-color:<?php echo esc_attr(get_theme_mod('tt_copyright_bg')); ?>" role="contentinfo">
    <div class="container">
        <div class="copyright text-center">
            
            <?php if ( function_exists( 'the_privacy_policy_link' ) ) {
                the_privacy_policy_link( '', '<span role="separator" aria-hidden="true"></span>' );
            } ?>

            <p style="color:<?php echo esc_attr(get_theme_mod('tt_copyright_text_color')); ?>">
                <?php if (get_theme_mod('tt_copyright_setting')) :
                    echo wp_kses(get_theme_mod('tt_copyright_setting'), array(
                        'a'      => array(
                            'class' => array(),
                            'href'   => array(),
                            'title'  => array(),
                            'target' => array()
                        ),
                        'br'     => array(),
                        'em'     => array(),
                        'strong' => array(),
                        'ul'     => array('class' => array()),
                        'li'     => array('class' => array()),
                        'p'      => array(),
                        'span'   => array(
                            'class' => array()
                        )
                    ));
                else : ?>
                    <span><?php esc_html_e('ThreeSixtyBlog Lite | ', 'threesixtyblog-lite'); ?></span>
                    <a href="<?php echo esc_url( __( 'https://wordpress.org/', 'threesixtyblog-lite' ) ); ?>" class="imprint">
                        <?php printf( __( 'Proudly powered by %s', 'threesixtyblog-lite' ), 'WordPress' ); ?>
                    </a>
                <?php endif; ?>
            </p>
        </div> <!-- .copyright -->
    </div> <!-- .container -->
</footer> <!-- .footer-section -->

<?php wp_footer(); ?>

</body>
</html>