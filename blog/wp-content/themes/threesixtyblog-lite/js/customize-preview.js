/**
 * Live-update changed settings in real time in the Customizer preview.
 */

( function( $ ) {
	var style = $( '#threesixtyblog-color-scheme-css' ),
	api = wp.customize;

	if ( ! style.length ) {
		style = $( 'head' ).append( '<style type="text/css" id="threesixtyblog-color-scheme-css" />' )
		                    .find( '#threesixtyblog-color-scheme-css' );
	}

	// Color Scheme CSS.
	api.bind( 'preview-ready', function() {
		api.preview.bind( 'update-color-scheme-css', function( css ) {
			style.html( css );
		} );
	} );

	// Site title and description.
	wp.customize( 'blogname', function( value ) {
		value.bind( function( to ) {
			$( '.navbar-brand h1 a' ).text( to );
		});
	});

	// Footer Copyright Text.
	wp.customize( 'tt_copyright_setting', function( value ) {
		value.bind( function( to ) {
			$( '.copyright p' ).text( to );
		});
	});

	// Footer Background Color
	wp.customize( 'tt_copyright_bg', function( value ) {
		value.bind( function( to ) {
			$( '.footer-section' ).css('background', to );
		});
	});

	// Footer text Color
	wp.customize( 'tt_copyright_text_color', function( value ) {
		value.bind( function( to ) {
			$( '.copyright > p' ).css('color', to );
		});
	});


} )( jQuery );
