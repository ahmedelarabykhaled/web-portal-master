<?php

/*
Template Name: Publications Template
*/

?>

<?php get_header(); ?>




<div class="container">
	<br><br>
	<div class="row">
		<div class="col s12">
			<h4 class="orange-text text-darken-2">Publications</h4><br><br>

			<?php
			$query = new WP_Query(array('post_type' => 'publications'));
			while ($query->have_posts()) {
				$query->the_post();
				?>

					<div class="section">
						<h5 class="orange-text text-darken-2"><?= get_the_title() ?></h5>
						<strong>Abstract</strong>
						<p><?= get_the_content() ?></p>
						<ul>
							<li><a class="black-text" href="<?= get_field('resource_file') ?>" target="_blank"><u>Download</u></a></li>
						</ul>
					</div>
				<?php
				if (($query->current_post +1) != ($query->post_count)) {
					?>
					<div class="divider"></div>
					<?php
				}

			}
			?>


		</div>
	</div>
	<br><br>
</div>




<?php get_footer(); ?>
