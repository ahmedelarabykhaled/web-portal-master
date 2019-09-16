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
	</style>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<!-- <?= $me = wp_get_nav_menu_items('Main Menu');
	foreach ($me as $m) {
		print("<pre>".print_r($m)."</pre>");
	}

	 ?> -->
	<div class="navbar-fixed">
	  <nav class="black" role="navigation">
	    <div class="nav-wrapper container">
	      <div class="hide-on-med-and-down">
	        <a id="logo-container" href="index.php" class="brand-logo"><img src="<?= get_template_directory_uri().'/res/lucy-logo-70.png' ?>" alt="Plugin logo"></a>
	      </div>
	      <div class="hide-on-large-only">
	        <a id="logo-container" href="index.php" class="brand-logo"><img src="<?= get_template_directory_uri().'/res/lucy-logo-70.png' ?>" alt="Plugin logo"></a>
	      </div>
	      
	      <ul class="right hide-on-med-and-down">
	        <li><a href="index.php">Home</a></li>
	        <li><a class="dropdown-button" data-beloworigin="true" href="#" data-activates="dropdown-desktop-software">Software<i class="material-icons right">arrow_drop_down</i></a></li>
	        <li><a href="#" target="_blank">Documentation</a></li>
	        <li><a href="publications" target="_blank">Publications</a></li>
	        <li><a href="contribute.php">Contribute</a></li>
	        
	        <li><a href="faq.php">FAQ</a></li>
	        <li><a class="dropdown-button" data-beloworigin="true" href="#" data-activates="dropdown-desktop-atoms">Atoms<i class="material-icons right">arrow_drop_down</i></a></li>
	      </ul>
	      
	      <ul id="nav-mobile" class="side-nav">
	        <li><a href="index.php">Home</a></li>
	        <li><a class="dropdown-button" data-beloworigin="false" href="#" data-activates="dropdown-mobile-software">Software<i class="material-icons right">arrow_drop_down</i></a></li>
	        <li><a href="#" target="_blank">Documentation</a></li>
	        <li><a href="publications" target="_blank">Publications</a></li>
	        <li><a href="contribute.php">Contribute</a></li>
	        
	        <li><a href="faq.php">FAQ</a></li>
	        <li><a class="dropdown-button" data-beloworigin="false" href="#" data-activates="dropdown-mobile-atoms">Atoms<i class="material-icons right">arrow_drop_down</i></a></li>
	      </ul>
	      
	      <!--mobile navigation-->
	      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons" style="color:white">menu</i></a>
	      
	      <!-- Dropdown Software Mobile Structure -->
	      <ul id="dropdown-mobile-software" class="white-text dropdown-content">
	        <li><a href="#" target="_blank">AtomStore</a></li>
	        <li><a href="#" target="_blank">PlayGround</a></li>
	        <li><a href="#" target="_blank">Wall</a></li>
	        <li class="divider"></li>
	        <li><a href="#" target="_blank">Code Repo &lt;/&gt;</a></li>
	        <li class="divider"></li>
	      </ul>
	      
	      <!-- Dropdown Software Desktop Structure -->
	      <ul id="dropdown-desktop-software" class="white-text dropdown-content">
	        <li><a href="#" target="_blank">AtomStore</a></li>
	        <li><a href="#" target="_blank">PlayGround</a></li>
	        <li><a href="#" target="_blank">Wall</a></li>
	        <li class="divider"></li>
	        <li><a href="#" target="_blank">Code Repo &lt;/&gt;</a></li>
	        <li class="divider"></li>
	      </ul>

	      <!-- Dropdown Atoms List Mobile Structure -->
	      <ul id="dropdown-mobile-atoms" class="dropdown-content">
	        <li><a href="flare_names.php">Per Name</a></li>
	        <li><a href="flare_categories.php">Per Category</a></li>
	      </ul>

	      <!-- Dropdown Atoms List Desktop Structure -->
	      <ul id="dropdown-desktop-atoms" class="dropdown-content">
	        <li><a href="flare_names.php">Per Name</a></li>
	        <li><a href="flare_categories.php">Per Category</a></li>
	      </ul>

	    </div>
	  </nav>
	</div>

	<!-- Tell us what you think starts here -->
	<div class="hide-on-med-and-down">
	  <div class="fixed-action-btn" style="top: 20px; right: 64px;">
	    <a id="chat_bubble_outline" class="btn-floating btn-large orange darken-2" onclick="jQuery(\'.tap-target\').tapTarget(\'open\')"><i class="material-icons">chat_bubble_outline</i></a>
	  </div>
	  <div class="tap-target-wrapper" style="right: -348px; bottom: -327px; position: fixed;">
	    <div class="tap-target orange darken-2" data-activates="chat_bubble_outline">
	      <div class="tap-target-content white-text" style="width: 456px; height: 400px; top: 0px; right: 0px; bottom: 0px; left: 0px; padding: 56px; vertical-align: bottom;">
	        <h5>Get in touch !</h5>
	        <p class="white-text">You can get in touch with us be sending a mail to <a class="white-text" href="mailto:pluginthefuture@gmail.com">pluginthefuture@gmail.com</a>
	        </p>
	      </div>
	    </div>
	    <div class="hide-on-med-and-down">
	      <div class="tap-target-wave" style="top: 344px; left: 344px; width: 112px; height: 112px;"><a class="btn-floating btn-large waves-effect tap-target-origin orange darken-2"><i class="material-icons">chat_bubble_outline</i></a>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- Tell us what you think ends here -->





<!-- 
 -->
<!--  -->
<!--  -->

	<!-- <div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'web-portal-master' ); ?></a>
		<div class="navbar-fixed">
			<nav id="site-navigation" class="main-navigation">
				<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Primary Menu', 'web-portal-master' ); ?></button>
				<?php
				wp_nav_menu( array(
					'theme_location' => 'menu-1',
					'menu_id'        => 'primary-menu',
					'menu_class'     => ''
				) );
				?>
			</nav>
		</div> 
	</div> -->

		<!-- Tell us what you think starts here -->
		<!-- <div class="hide-on-med-and-down">
			<div class="fixed-action-btn" style="top: 20px; right: 64px;">
				<a id="chat_bubble_outline" class="btn-floating btn-large orange darken-2" onclick="jQuery(\'.tap-target\').tapTarget(\'open\')"><i class="material-icons">chat_bubble_outline</i></a>
			</div>
			<div class="tap-target-wrapper" style="right: -348px; bottom: -327px; position: fixed;">
				<div class="tap-target orange darken-2" data-activates="chat_bubble_outline">
					<div class="tap-target-content white-text" style="width: 456px; height: 400px; top: 0px; right: 0px; bottom: 0px; left: 0px; padding: 56px; vertical-align: bottom;">
						<h5>Get in touch !</h5>
						<p class="white-text">You can get in touch with us be sending a mail to <a class="white-text" href="mailto:pluginthefuture@gmail.com">pluginthefuture@gmail.com</a>
						</p>
					</div>
				</div>
				<div class="hide-on-med-and-down">
					<div class="tap-target-wave" style="top: 344px; left: 344px; width: 112px; height: 112px;"><a class="btn-floating btn-large waves-effect tap-target-origin orange darken-2"><i class="material-icons">chat_bubble_outline</i></a>
					</div>
				</div>
			</div>
		</div> -->
		<!-- Tell us what you think ends here -->

		<div id="content" class="site-content">
