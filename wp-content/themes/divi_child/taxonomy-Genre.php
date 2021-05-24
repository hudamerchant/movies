<?php get_header(); ?>
<?php
    $terms = get_queried_object();
?>
<div class="container">
    <main id="site-content" role="main">
    <h1><?php echo $terms->taxonomy, ':', $terms->name ; ?></h1>
        <?php while(have_posts()) : the_post();?>
            <article id="post-<?php the_ID(); ?>" >
            <h2><?php the_title(); ?></h2>
            <div>
                <p><?php the_content(); ?></p>
                <a href="<?php the_permalink(); ?>">Read More</a>
            </div>
            </article>
        <?php endwhile; ?> 
    </main>
</div>


<?php get_footer(); ?>