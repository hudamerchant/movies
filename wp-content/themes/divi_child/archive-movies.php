<?php get_header(); ?>
<div class="container">
    <main id="site-content" role="main">
        <?php
            while(have_posts()) : the_post();
        ?>
            <article id="post-<?php the_ID(); ?>" >
            <h2><?php the_title(); ?></h2>
            <div>
                <p><?php the_content(); ?></p>
                <?php my_custom_hook(); ?>
                <a href="<?php the_permalink(); ?>">Read More</a>
            </div>
            </article>
        <?php endwhile; ?> 
    </main>
</div>


<?php get_footer(); ?>