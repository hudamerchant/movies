<?php
/*
Plugin Name: Movies
*/

// Our custom post type function
function create_posttype() {
 
    register_post_type( 'movies',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'Movies' ),
                'singular_name' => __( 'Movie' )
            ),
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'movies'),
            'show_in_rest' => true,
 
        )
    );
}
// Hooking up our function to theme setup
add_action( 'init', 'create_posttype' );

/*
* Creating a function to create our CPT
*/
 
function custom_post_type() {
 
// Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x( 'Movies', 'Post Type General Name', 'divi' ),
        'singular_name'       => _x( 'Movie', 'Post Type Singular Name', 'divi' ),
        'menu_name'           => __( 'Movies', 'divi' ),
        'parent_item_colon'   => __( 'Parent Movie', 'divi' ),
        'all_items'           => __( 'All Movies', 'divi' ),
        'view_item'           => __( 'View Movie', 'divi' ),
        'add_new_item'        => __( 'Add New Movie', 'divi' ),
        'add_new'             => __( 'Add New', 'divi' ),
        'edit_item'           => __( 'Edit Movie', 'divi' ),
        'update_item'         => __( 'Update Movie', 'divi' ),
        'search_items'        => __( 'Search Movie', 'divi' ),
        'not_found'           => __( 'Not Found', 'divi' ),
        'not_found_in_trash'  => __( 'Not found in Trash', 'divi' ),
    );
     
// Set other options for Custom Post Type
     
    $args = array(
        'label'               => __( 'movies', 'divi' ),
        'description'         => __( 'Movie news and reviews', 'divi' ),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields', ),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array( 'genres' ),
        /* A hierarchical CPT is like Pages and can have
        * Parent and child items. A non-hierarchical CPT
        * is like Posts.
        */ 
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
        'show_in_rest' => true,
 
    );
     
    // Registering your Custom Post Type
    register_post_type( 'movies', $args );
 
}
 
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/
 
add_action( 'init', 'custom_post_type', 0 );

add_action( 'pre_get_posts', 'add_my_post_types_to_query' );
 
function add_my_post_types_to_query( $query ) {
    if ( is_home() && $query->is_main_query() )
        $query->set( 'post_type', array( 'post', 'movies' ) );
    return $query;
}

//hook into the init action and call create_book_taxonomies when it fires
 
add_action( 'init', 'create_subjects_hierarchical_taxonomy', 0 );
 
//create a custom taxonomy name it subjects for your posts
 
function create_subjects_hierarchical_taxonomy() {
 
// Add new taxonomy, make it hierarchical like categories
//first do the translations part for GUI
 
  $labels = array(
    'name' => _x( 'Genre', 'taxonomy general name' ),
    'singular_name' => _x( 'Genre', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Genre' ),
    'all_items' => __( 'All Genre' ),
    'parent_item' => __( 'Parent Genre' ),
    'parent_item_colon' => __( 'Parent Genre:' ),
    'edit_item' => __( 'Edit Genre' ), 
    'update_item' => __( 'Update Genre' ),
    'add_new_item' => __( 'Add New Genre' ),
    'new_item_name' => __( 'New Genre Name' ),
    'menu_name' => __( 'Genre' ),
  );    
 
// Now register the taxonomy
  register_taxonomy('Genre',array('movies'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_in_rest' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'Genre' ),
  ));
 
}

function call_movies_archive(){
    $args = array(
        'post_type'     => 'movies',
        'tax_query'     => array(
            array(
                'taxonomy'  => 'Genre',
                'operator'  => 'EXISTS'
            )
        )
        // 'order_by'      => 'id',
        // 'order'         => 'DESC',
        // 'post_per_page' => -1
    );
    $query = new WP_Query($args);
    // var_dump($query);die;

    $html = '';
    if($query->have_posts()) :
        while($query->have_posts()) : $query->the_post();
            $html .= '<h2><strong>'. the_title(). '</strong></h2>';
            $html .= '<div><p>'. the_content(). '</p>';
        endwhile;
    endif;
    return $html;
}
add_shortcode('all_movies', 'call_movies_archive');


function List_movies_through_genre($atts) {

    $a = shortcode_atts(array(
       'Genre' => '',
    ), $atts);
    $args = array(
       'posts_per_page'  => -1,
       'tax_query'       => array(
          array(
             'taxonomy'  => 'Genre',
             'field'     => 'slug',
             'terms'     => $atts // Your exploded terms array 
          )
       ),
       'post_type' => 'movies',
       'orderby'   => 'id,'
    );
 
    $query = new WP_Query($args);
    // var_dump($query);die;

    $html = '';
    if($query->have_posts()) :
        while($query->have_posts()) : $query->the_post();
            $html .= '<h2><strong>'. the_title(). '</strong></h2>';
            $html .= '<div><p>'. the_content(). '</p>';
        endwhile;
    endif;
    return $html;
}
 add_shortcode('List_movies', 'List_movies_through_genre');


function my_custom_function(){}