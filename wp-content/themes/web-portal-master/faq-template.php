<?php

/*
Template Name: Faq Template
*/

?>
<?php get_header(); ?>

<div class="container">
	<br><br>
	<div class="row">
		<div class="col s12">
			<h4 class="orange-text text-darken-2">FAQ</h4><br><br>

			<?php

			$categories = get_categories();
			foreach ($categories as $category) {
				if ($category->term_id != '1') {
					?>
					<h5 class="black-text text-darken-2"><?= $category->name ?></h5><br>
					<!-- FAQ starts here -->

					<!-- GENERAL -->
					<ul class="collapsible" data-collapsible="accordion">
						<?php
						$query = new WP_Query(array('post_type' => 'faq'
							,'tax_query' => array(
								array(
									'taxonomy' => 'category',
									'field'    => 'name',
									'terms'    => $category->name,
								),
							),
						));
						while ($query->have_posts()) {
							$query->the_post();
							?>
							<li>
								<div class="collapsible-header"><strong><?= get_the_title() ?></strong></div>
								<div class="collapsible-body"><p><?= get_the_content() ?></p></div>
							</li>

							<?php
						}
						?>
					</ul>
						<?php
				}
			}

			?>


			<br><br>
			<!-- FAQ ends here -->

		</div>
	</div>
	<br><br>
</div>

<script>
	jQuery('li').click(function() {
		jQuery('li').children('div:nth-child(2)').slideUp(100);
		jQuery(this).children('div:nth-child(2)').slideToggle(100);
	})
</script>


<?php get_footer(); ?>