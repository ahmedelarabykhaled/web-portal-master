<?php
/**
* Template Name: Home Page
*/
?>


<?php get_header(); ?>

<?php

$query = new WP_Query(array('post_type'=>'home_page'));
while ($query->have_posts()) {
	$query->the_post();
	if (get_field('is_primary') == 'true') {
		?>
			<div class="section no-pad-bot" id="index-banner">
			  <div class="container">
			    <br><br>
			    <div class="hide-on-med-and-down">
			      <h1 class="header center orange-text text-darken-2"><?= get_the_title() ?><span class="cursor">_</span></h1>
			    </div>
			    <div class="hide-on-large-only">
			      <h1 class="header center orange-text text-darken-2"># plugin<span class="cursor">_</span></h1>
			    </div>
			    
			    <div class="row center">
			      <h5 class="header col s12 light"><?= get_the_content() ?></h5>
			    </div>
			    <div class="row center">
			      <a href="<?= get_field('link') ?>" id="download-button" class="btn waves-effect waves-light orange darken-2 tooltipped" data-position="bottom" data-tooltip="Read the documentation" target="_blank"><strong>Get Started</strong></a>
			    </div>
			    <br><br>
			  </div>
			</div>
		<?php
		break;
	}
}
?>
<div class="container">
	<div class="section">
	<!--   Icon Section   -->
	<div class="row">

<?php
$query = new WP_Query(array('post_type'=>'home_page',));
while ($query->have_posts()) {
	$query->the_post();
	if (get_field('is_primary') != 'true') {
		?>

			      <div class="col s12 m6">
			        <div class="icon-block">
			          <h2 class="center orange-text text-darken-2"><i class="material-icons">extension</i></h2>
			          <h5 class="center"><?= get_the_title() ?></h5>

			          <p class="light"><?= get_the_content() ?></p>
			        </div>
			      </div>

		<?php
	}
}



?>

			    </div>

			  </div>
			  <br><br>

			  <div class="section">

			  </div>
			</div>


<?php get_footer(); ?>