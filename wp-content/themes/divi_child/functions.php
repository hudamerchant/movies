<?php

add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles() {
    $parenthandle = 'parent-style'; 
    $theme = wp_get_theme();
    
    wp_enqueue_style( $parenthandle, get_template_directory_uri() . '/style.css',array() , $theme->parent()->get('Version'));
    wp_enqueue_style( 'child-style', get_stylesheet_uri(),array( $parenthandle ) ,rand(111,9999));


    wp_enqueue_style( 'bootstrap-style', "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css");
    
    wp_enqueue_script( 'jquery-script', "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js");
    wp_enqueue_script( 'bootstrap-script', "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js");
   
}

add_action('my_custom_hook','my_text');
function my_text(){
  // var_dump($_REQUEST);die;
  $html = '<p class= "custom-hook"><strong>Custom Hook Created By Huda Zehra</strong></p>';
  echo $html;
}
function my_custom_hook(){
  do_action('my_custom_hook');
}