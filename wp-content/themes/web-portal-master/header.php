<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package web-portal-master
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="icon" type="image/png" href="<?= home_url().'/wp-content/themes/web-portal-master/res//favicon-32x32.png' ?>"/>
	<style >
		html,body
		{
			margin: 0px;
			padding: 0px;
		}
		.post, .page 
		{
			margin: 0px !important;
		}
		#primary-menu
		{
			position: absolute;
			right: 0px;
		}
		#primary-menu a
		{
			color: #fff !important;
		}
		#primary-menu .sub-menu a
		{
			background-color: #fff;
			color: #000 !important;
		}
		#download-button
		{
			color: #fff;
		}
		#nav-mobile
		{
			transform: translateX(-100%);
		}
	</style>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<div class="navbar-fixed">

		<nav id="site-navigation" class="main-navigation black">
			<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Primary Menu', 'lfasdkjf' ); ?></button>
			<div class="nav-wrapper container">
				<div class="hide-on-med-and-down">
					<a id="logo-container" href="<?= home_url() ?>" class="brand-logo"><img src="<?= home_url()."/wp-content/themes/web-portal-master/res/lucy-logo-85.png" ?>" alt="Plugin logo"></a>
				</div>
				<div class="hide-on-large-only">
					<a id="logo-container" href="<?= home_url() ?>" class="brand-logo"><img src="<?= home_url()."/wp-content/themes/web-portal-master/res/lucy-logo-85.png" ?>" alt="Plugin logo"></a>
				</div>
				<?php
				wp_nav_menu( array(
					'theme_location' => 'menu-1',
					'menu_id'        => 'primary-menu',
					'menu_class'     => 'right hide-on-med-and-down',
					'container'      => false,
				) );

				wp_nav_menu( array(
					'theme_location' => 'menu-1',
					'menu_id'        => 'nav-mobile',
					'menu_class'     => 'side-nav',
					'container'      => false,
				) );
				?>
				
				<!--mobile navigation-->
				<a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons" style="color:white">menu</i></a>
				
			</div>
		</nav><!-- #site-navigation -->
	</div>



	<!-- Tell us what you think starts here -->
	<div class="hide-on-med-and-down">
	  <div class="fixed-action-btn" style="top: 20px; right: 64px;">
	    <a id="chat_bubble_outline" class="btn-floating btn-large orange darken-2" ><i class="material-icons">chat_bubble_outline</i></a>
	  </div>
	  <div class="tap-target-wrapper" style="right: -305px; top: -340px; position: fixed;">
	    <div class="tap-target orange darken-2" data-activates="chat_bubble_outline">
	      <div class="tap-target-content white-text" style="width: 456px; height: 400px; top: 239px; right: 0px; bottom: 0px; left: 0px; padding: 56px; vertical-align: bottom;">
	        <h5>Get in touch !</h5>
	        <p class="white-text">You can get in touch with us be sending a mail to <a class="white-text" href="mailto:pluginthefuture@gmail.com">pluginthefuture@gmail.com</a>
	        </p>
	      </div>
	    </div>
	    <div class="hide-on-med-and-down">
	      <div class="tap-target-wave" style="top: 347px; left: 347px; width: 112px; height: 112px;"><a class="btn-floating btn-large waves-effect tap-target-origin orange darken-2"><i class="material-icons">chat_bubble_outline</i></a>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- Tell us what you think ends here -->

	<div id="content" class="site-content">
