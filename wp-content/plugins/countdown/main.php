<?php 
/*
Plugin Name: CountDown
version: 1.0.1
*/

function register_menu_page() {
  add_menu_page( 
    __( 'Custom Menu Title', 'textdomain' ),
    'Countdown Timer',
    'manage_options',
    'countdown',
    'countdown_init',
    'dashicons-welcome-widgets-menus',
    6
  );

  add_submenu_page( 'countdown', 'Add new Timer', 'Add new Timer',
    'manage_options', 'add-new-timer','callback_add_new_timer');
}

add_action( 'admin_menu', 'register_menu_page' );

function countdown_init(){
  include 'timer-list.php';
}


function callback_add_new_timer(){
  include 'add-timer.php';
}