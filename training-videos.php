<?php
session_start();
?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Academy Halogen</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="Description" content="">

<meta name="keywords" content="" />

<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="dist/js/jquery-2.2.js"></script>
<link href="dist/style.css" rel="stylesheet" type="text/css" media="all">

<link href="dist/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="dist/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="icon" href="images/favicon.png" />


<link href="dist/css/animate.css" rel="stylesheet">
<link href="dist/css/owl.carousel.css" rel="stylesheet">
<link href="dist/css/owl.transitions.css" rel="stylesheet">
<link href="dist/css/owl.theme.css" rel="stylesheet">


<style>
body {
	background: none;
}
#header  {
	background: #FFF;
}
	/*! Modals v10.1.2 | (c) 2017 Chris Ferdinandi | MIT License | http://github.com/cferdinandi/modals */
.modal{background-color:#none;display:none;max-width:100%;padding:.5em 1em;visibility:hidden;z-index:2}@media (min-width:40em){.modal{max-width:98%}}.modal.active{display:block;height:100%;left:0;max-height:100%;overflow:auto;position:fixed;right:0;top:0;visibility:visible;-webkit-overflow-scrolling:touch}@media (min-width:30em){.modal.active{height:auto;left:3%;margin-left:auto;margin-right:auto;right:3%;top:50px}}@media (min-width:40em){.modal.active{left:8%;right:8%}.modal.active.modal-medium{width:35em}.modal.active.modal-small{width:25em}}.modal:focus{outline:none}.modal-bg{background-color:#272727;bottom:0;position:fixed;left:0;opacity:.9;right:0;top:0;z-index:1}.close{color:gray;cursor:pointer;float:right;font-weight:700;font-size:1.5em;text-decoration:none}.close:hover{color:#5a5a5a;cursor:pointer}
</style>




</head>
<body>


<?php include('inc/header.php'); ?>

<div id="tournament_page" class="tourn" style="margin-bottom: 50px;">

<div class="container-fluid">
<h1 align="center">Training Videos</h1>
<div class="row">
<div class="col-md-12" style="margin-top: 50px;">

<div class="col-md-4" style="padding-bottom: 10px;">
<a href="#" data-modal="#modal-youtube"><img src="images/l_two.jpg" class="l_two grid" style="height: 250px; width: 100%" alt=""/></a>
</div>
        	
<div class="col-md-4" style="padding-bottom: 10px;">
<img src="images/l_two.jpg" class="l_two grid" style="height: 250px; width: 100%" alt=""/>
</div>
        	
<div class="col-md-4" style="padding-bottom: 10px;">
<img src="images/l_two.jpg" class="l_two grid" style="height: 250px; width: 100%" alt=""/>
</div>
</div>
</div>

</div>

</div>

<div class="modal" data-modal-window id="modal-youtube">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Security Taining Video</h4>
</div>
<div class="modal-body">
<iframe width="560" height="315" src="https://www.youtube.com/embed/O0xDSse5Jp8" frameborder="0" allowfullscreen></iframe>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-modal-close>Close</button>
</div>
</div>

</div>
</div>
  
 <?php include('inc/footer2.php'); ?>
 
  
  
  
<script src="dist/js/bootstrap.min.js"></script>

<script src="dist/js/owl.carousel.min.js"></script>
<script src="dist/js/wow.min.js"></script>
<script src="dist/js/main.js"></script>
<script>
/*! Modals v10.1.2 | (c) 2017 Chris Ferdinandi | MIT License | http://github.com/cferdinandi/modals */
!(function(e,t){"function"==typeof define&&define.amd?define([],t(e)):"object"==typeof exports?module.exports=t(e):e.modals=t(e)})("undefined"!=typeof global?global:this.window||this.global,(function(e){"use strict";var t,o,n,l={},c="querySelector"in document&&"addEventListener"in e&&"classList"in document.createElement("_"),r="closed",d={selectorToggle:"[data-modal]",selectorWindow:"[data-modal-window]",selectorClose:"[data-modal-close]",modalActiveClass:"active",modalBGClass:"modal-bg",preventBGScroll:!0,preventBGScrollHtml:!0,preventBGScrollBody:!0,backspaceClose:!0,stopVideo:!0,callbackOpen:function(){},callbackClose:function(){}},a=function(){var e={},t=!1,o=0,n=arguments.length;"[object Boolean]"===Object.prototype.toString.call(arguments[0])&&(t=arguments[0],o++);for(;o<n;o++){var l=arguments[o];!(function(o){for(var n in o)Object.prototype.hasOwnProperty.call(o,n)&&(t&&"[object Object]"===Object.prototype.toString.call(o[n])?e[n]=a(!0,e[n],o[n]):e[n]=o[n])})(l)}return e},s=function(e,t){for(Element.prototype.matches||(Element.prototype.matches=Element.prototype.matchesSelector||Element.prototype.mozMatchesSelector||Element.prototype.msMatchesSelector||Element.prototype.oMatchesSelector||Element.prototype.webkitMatchesSelector||function(e){for(var t=(this.document||this.ownerDocument).querySelectorAll(e),o=t.length;--o>=0&&t.item(o)!==this;);return o>-1});e&&e!==document;e=e.parentNode)if(e.matches(t))return e;return null},i=function(e,t){if(t.stopVideo&&e.classList.contains(t.modalActiveClass)){var o=e.querySelector("iframe"),n=e.querySelector("video");if(o){var l=o.src;o.src=l}n&&n.pause()}},u=function(){var e=document.createElement("div");e.style.visibility="hidden",e.style.width="100px",e.style.msOverflowStyle="scrollbar",document.body.appendChild(e);var t=e.offsetWidth;e.style.overflow="scroll";var o=document.createElement("div");o.style.width="100%",e.appendChild(o);var n=o.offsetWidth;return e.parentNode.removeChild(e),t-n},m=function(){if(!document.querySelector("[data-modal-bg]")){var e=document.createElement("div");e.setAttribute("data-modal-bg",!0),e.classList.add(n.modalBGClass),document.body.appendChild(e)}},p=function(){var e=document.querySelector("[data-modal-bg]");e&&document.body.removeChild(e)};l.closeModal=function(e){var t=a(n||d,e||{}),l=document.querySelector(t.selectorWindow+"."+t.modalActiveClass);l&&(i(l,t),l.classList.remove(t.modalActiveClass),p(),r="closed",t.preventBGScroll&&(document.documentElement.style.overflowY="",document.body.style.overflowY="",document.body.style.paddingRight=""),t.callbackClose(o,l),o&&(o.focus(),o=null))},l.openModal=function(e,c,s){var i=a(n||d,s||{}),u=document.querySelector(c);"open"===r&&l.closeModal(i),e&&(o=e),u.classList.add(i.modalActiveClass),m(),r="open",u.setAttribute("tabindex","-1"),u.focus(),i.preventBGScroll&&(i.preventBGScrollHtml&&(document.documentElement.style.overflowY="hidden"),i.preventBGScrollBody&&(document.body.style.overflowY="hidden"),document.body.style.paddingRight=t+"px"),i.callbackOpen(e,u)};var v=function(e,t,o){if(o)return e.removeEventListener("touchstart",a,!1),e.removeEventListener("touchend",s,!1),void e.removeEventListener("click",i,!1);if(t&&"function"==typeof t){var n,l,c,r,d,a=function(e){n=!0,l=e.changedTouches[0].pageX,c=e.changedTouches[0].pageY},s=function(e){r=e.changedTouches[0].pageX-l,d=e.changedTouches[0].pageY-c,Math.abs(r)>=7||Math.abs(d)>=10||t(e)},i=function(e){if(n)return void(n=!1);t(e)};e.addEventListener("touchstart",a,!1),e.addEventListener("touchend",s,!1),e.addEventListener("click",i,!1)}},f=function(e){var t=e.target,o=s(t,n.selectorToggle),c=s(t,n.selectorClose),d=s(t,n.selectorWindow),a=e.keyCode;if(a&&"open"===r)(27===a||n.backspaceClose&&(8===a||46===a))&&l.closeModal();else if(t){if(d&&!c)return;!o||a&&13!==a?"open"===r&&(e.preventDefault(),l.closeModal()):(e.preventDefault(),l.openModal(o,o.getAttribute("data-modal"),n))}};return l.destroy=function(){n&&(v(document,null,!0),document.removeEventListener("keydown",f,!1),document.documentElement.style.overflowY="",document.body.style.overflowY="",document.body.style.paddingRight="",t=null,o=null,n=null)},l.init=function(e){c&&(l.destroy(),n=a(d,e||{}),t=u(),v(document,f),document.addEventListener("keydown",f,!1))},l}));

/**
 * Autoplay a YouTube, Vimeo, or HTML5 video
 * @param  {Node} modal  The modal to search inside
 */
var autoplayVideo = function (modal) {

	// Look for a YouTube, Vimeo, or HTML5 video in the modal
	var video = modal.querySelector('iframe[src*="www.youtube.com"], iframe[src*="player.vimeo.com"], video');

	// Bail if the modal doesn't have a video
	if (!video) return;

	// If an HTML5 video, play it
	if (video.tagName.toLowerCase() === 'video') {
		video.play();
		return;
	}

	// Add autoplay to video src
	// video.src: the current video `src` attribute
	// (video.src.indexOf('?') < 0 ? '?' : '&'): if the video.src already has query string parameters, add an "&". Otherwise, add a "?".
	// 'autoplay=1': add the autoplay parameter
	video.src = video.src + (video.src.indexOf('?') < 0 ? '?' : '&') + 'autoplay=1';
	
};

/**
 * Stop a YouTube, Vimeo, or HTML5 video
 * @param  {Node} modal  The modal to search inside
 */
var stopVideo = function (modal) {

	// Look for a YouTube, Vimeo, or HTML5 video in the modal
	var video = modal.querySelector('iframe[src*="www.youtube.com"], iframe[src*="player.vimeo.com"], video');

	// Bail if the modal doesn't have a video
	if (!video) return;

	// If an HTML5 video, pause it
	if (video.tagName.toLowerCase() === 'video') {
		video.pause();
		return;
	}

	// Remove autoplay from video src
	video.src = video.src.replace('&autoplay=1', '').replace('?autoplay=1', '');

};

modals.init({
	callbackOpen: function ( toggle, modal ) {
		autoplayVideo(modal);
	},
	callbackClose: function ( toggle, modal ) {
		stopVideo(modal);
	}
});	
</script>
</body>
</html>