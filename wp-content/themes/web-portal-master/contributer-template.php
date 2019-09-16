<?php
/*
Template Name: Contributer Template
*/
?>


<?php get_header(); ?>


<div class="container">
	<br><br>
	<div class="row">
		<div class="col s12">
			<h4 class="orange-text text-darken-2">How to Contribute</h4><br><br>
			<div class="section">
				<?php
				$query = new WP_Query(array('post_type'=>'contributer'));
				while($query->have_posts())
				{
					$query->the_post();
					?>
						<h5 class="orange-text text-darken-2"><?= get_the_title() ?></h5>
						<p><?= get_the_content() ?></p>
						<br>
					<?php
				}
				?>
			</div>
		</div>
	</div>
</div>






<?php get_footer(); ?>