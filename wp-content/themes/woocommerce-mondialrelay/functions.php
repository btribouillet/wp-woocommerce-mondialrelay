<?php
add_action( 'wp_enqueue_scripts', 'mondialrelay_style' );
function mondialrelay_style() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

}

add_filter('got_url_rewrite', 'enforce_got_url_rewrite');
function enforce_got_url_rewrite() {
    return true;
}