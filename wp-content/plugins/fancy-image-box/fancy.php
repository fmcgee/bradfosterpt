<?php
/*
Plugin Name: Fancy Image Box
Plugin URI: https://github.com/fmcgee/Fancy-Image-Box
Description: Simple WordPress light box plugin that uses fancybox jquery plugin : http://fancyapps.com/fancybox/
Version: 1.0
Author: Francis Mcgee
Author URI: http://webinception.co.uk
License: MIT License
*/


// Add the scripts

function fancyboxjs(){

wp_enqueue_style(
'fancyboxstyles',
WP_PLUGIN_URL.'/fancy-image-box/source/jquery.fancybox.css',
false);

wp_enqueue_script(
'jquery.fancybox',
WP_PLUGIN_URL.'/fancy-image-box/source/jquery.fancybox.pack.js',
array( 'jquery' ),
"2.1.5",
1 );

wp_enqueue_script(
'jquery.fancyboxcustom',
WP_PLUGIN_URL.'/fancy-image-box/fancybox.custom.js',
array( 'jquery', 'jquery.fancybox' ),
"1.0",
1 );

}

// Action our scripts
add_action( 'wp_enqueue_scripts', 'fancyboxjs' );
?>
