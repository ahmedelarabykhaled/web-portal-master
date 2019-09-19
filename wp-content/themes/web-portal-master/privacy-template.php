<?php

/*
Template Name: Privacy And Policy
*/

?>

<?php get_header(); ?>


<div class="container">
	<br><br>
	<div class="row">
		<div class="col s12">
			<h4 class="orange-text text-darken-2"><?= the_title() ?></h4><br><br>
		</div>
		<h5><?= the_modified_date() ?></h5>
		<?php
		    // TO SHOW THE PAGE CONTENTS
		    while ( have_posts() ) : the_post(); 
		?> <!--Because the_content() works only inside a WP Loop -->
		        <div class="entry-content-page">
		            <?php the_content(); ?> <!-- Page Content -->
		        </div><!-- .entry-content-page -->
		<?php
			endwhile
		?>

		<br><br>
	</div>
</div>


<?php get_footer(); ?>