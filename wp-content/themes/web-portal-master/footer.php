<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package web-portal-master
 */

?>

</div><!-- #content -->
<?php
$first_menu_items = wp_get_nav_menu_items(7);
$second_menu_items = wp_get_nav_menu_items(8);
?>

<!-- Return to Top -->
<a href="#0" class="cd-top"></a>

<footer class="page-footer black">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">About the Project</h5>
				<p class="grey-text text-lighten-4"><?= get_bloginfo('description') ?></p>
			</div>
			<div class="col l3 s12">
				
				<h5 class="white-text"><?= wp_get_nav_menu_object(7)->name ?></h5>
				<ul>
					<?php
					foreach ($first_menu_items as $f_item) {
						?>
						<li><a class="white-text" href="<?= $f_item->url ?>" target="_blank"><?= $f_item->type_label=='Page' ? $f_item->title : $f_item->post_title ?></a></li>
						<?php
					}
					?>
				</ul>
			</div>
			<div class="col l3 s12">
				
				<h5 class="white-text"><?= wp_get_nav_menu_object(8)->name ?></h5>
				<ul>
					<?php
					foreach ($second_menu_items as $s_item) {
						?>
						<li><a class="white-text" href="<?= $s_item->url ?>" target="_blank"><?= $s_item->type_label=='Page' ? $s_item->title : $s_item->post_title ?></a></li>
						<?php
					}
					?>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">
			Copyright © 2017 - present, Orange Labs. <br>
		</div>
	</div>
</footer>




</div><!-- #page -->

<?php wp_footer(); ?>

<script>
	jQuery('.fixed-action-btn,.tap-target-wave').on('click',function(){
		console.log('test');
		if (jQuery('.tap-target-wrapper').hasClass('open')) {
			jQuery('.tap-target-wrapper').removeClass('open');
		}else{
			jQuery('.tap-target-wrapper').addClass('open');
		}
	});

	var arr = jQuery('nav a');
	console.log(arr);
	for (var i = arr.length - 1; i >= 0; i--) {
		if (arr[i].host != "localhost" ) {
			arr[i].setAttribute('target','_blank');
		}
		if (arr[i].getAttribute('href') == '#' || arr[i].getAttribute('href') == '') {
			arr[i].setAttribute('href','javascript:void(0)');
		}
	}

	jQuery('.button-collapse').click(function(){
		if (jQuery('#nav-mobile').css('left') == '300px') {
			jQuery('#nav-mobile').css('left','0px');
		}else{
			jQuery('#nav-mobile').css('left','300px');
		}
	});
	jQuery('body').click(function(){
		if (jQuery('#nav-mobile').css('left') == '300px') {
			jQuery('#nav-mobile').css('left','0px');
		}
		console.log(jQuery('#nav-mobile').css('left'))
	});

</script>
<style type="text/css">
	.sub-menu
	{
		background-color: #fff;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	}
	@media(max-width: 993px)
	{
		.sub-menu li a
		{
			width: 100% !important;
		}
	}
	  #nav-mobile
	  {
	  	/*left: 300px;*/
	  	top: 48px;
	  	transition: 0.5s;
	  }
	  .node {
	    cursor: pointer;
	  }

	  .node:hover {
	    stroke: #000;
	    stroke-width: 1.5px;
	  }

	  .node--leaf {
	    fill: #f9f7e5;
	  }

	  .label {
	    font: 32px "Helvetica Neue", Helvetica, Arial, sans-serif;
	    text-anchor: middle;
	    text-shadow: 0 1px 0 #fff, 1px 0 0 #fff, -1px 0 0 #fff, 0 -1px 0 #fff;
	  }

	  .label,
	  .node--root,
	  .node--leaf {
	    pointer-events: none;
	  }


</style>
</body>
</html>
