/*
Theme Name: ThreeSixtyBlog Lite
Author: TrendyTheme
*/

/* ======= TABLE OF CONTENTS ==================================
    # Preloader
    # Enable bootstrap tooltip
    # Detect IE version
    # jQuery for page scrolling feature - requires jQuery Easing plugin
    # Mobile Dropdown Menu
    # Dropdown menu offest
    # Sticky Menu
    # Back to Top
========================================================= */

jQuery(function ($) {

    'use strict';

    /* ======= Preloader ======= */
    (function () {
        $('#status').fadeOut();
        $('#preloader').delay(200).fadeOut('slow');
    }());


    /* ======= Enable bootstrap tooltip ======= */
    (function () {
        $('[data-toggle="tooltip"]').tooltip()
    }());


    /* === MOBILE DROPDOWN MENU === */
    (function(){
        $('li.dropdown > a > span').each(function() {

            $(this).on('click', function(e){

                e.preventDefault();

                $(this).closest('li.dropdown').toggleClass('menu-collapsed');
            });
        });
    }());

    /* === Detect IE version === */
    (function () {
        function getIEVersion() {
            var match = navigator.userAgent.match(/(?:MSIE |Trident\/.*; rv:)(\d+)/);
            return match ? parseInt(match[1], 10) : false;
        }

        if( getIEVersion() ){
            $('html').addClass('ie'+getIEVersion());
        }
    }());


    /* === easeInOutExpo assign with jquery === */
    (function () {
        $.easing = Object.assign({}, $.easing, {
            easeInOutExpo: (x, t, b, c, d) => {
                if (t==0) return b;
                if (t==d) return b+c;
                if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
                return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
            },
        });
    }());
    

    /* === jQuery for page scrolling feature - requires jQuery Easing plugin === */
    (function () {
        $('.navbar-nav a[href^="#"], .tt-scroll').on('click', function (e) {
            e.preventDefault();

            var target = this.hash;
            var $target = $(target);
            var headerHeight = $('.header-wrapper, .header-wrapper.sticky').outerHeight();
            
            if (target) {
                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top - headerHeight + "px"
                }, 1200, 'easeInOutExpo', function () {
                    window.location.hash = target;
                });
            }
        });
    }());


    /* === Sticky Menu === */
    (function () {
        if($('.header-wrapper').length > 0){
            $('.header-wrapper').sticky({
                topSpacing: 0
            });
        }
    }());



     /* ======= Social share popup window ======= */
    (function () {
        $('ul.social-share li a').on('click', function () {
            var newwindow = window.open($(this).attr('href'), '', 'height=450,width=700');
            if (window.focus) {
                newwindow.focus()
            }
            return false;
        });
    }());


    /* === carousel touch enable === */
    (function () {
        $(".carousel").swipe({
          swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
            if (direction == 'left') $(this).carousel('next');
            if (direction == 'right') $(this).carousel('prev');
          },
          allowPageScroll:"vertical"
        });
    }());


    /* ======= Back to Top ======= */
    (function(){

        $('body').append('<div id="toTop"><i class="fa fa-angle-up"></i></div>');

        $(window).on('scroll', function () {
            if ($(this).scrollTop() !== 0) {
                $('#toTop').fadeIn();
            } else {
                $('#toTop').fadeOut();
            }
        }); 

        $('#toTop').on('click',function(){
            $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
        });

    }());
});