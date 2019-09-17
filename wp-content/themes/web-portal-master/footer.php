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


	<footer class="page-footer black">
	  <div class="container">
	    <div class="row">
	      <div class="col l6 s12">
	        <h5 class="white-text">About the Project</h5>
	        <p class="grey-text text-lighten-4">
	          Plug\'in Sandbox is an experimentation environment to develop and test 5G software components and Virtual Network Function
	          (VNF) chains. It allows researchers to collaborate on a shared platform and make their experiments reproducible as much as 
	          possible.
	        </p>
	      </div>
	      <div class="col l3 s12">
	        <h5 class="white-text">Read the Docs</h5>
	        <ul>
	          <li><a class="white-text" href="#" target="_blank">Documentation</a></li>
	          <li><a class="white-text" href="publications.php" target="_blank">Publications</a></li>
	        </ul>
	      </div>
	      <div class="col l3 s12">
	        <h5 class="white-text">Legal Notice</h5>
	        <ul>
	          <li><a class="white-text" href="files/terms_of_use.pdf" target="_blank">Terms Of Use</a></li>
	          <li><a class="white-text" href="files/contributor_terms_and_conditions.pdf" target="_blank">Contributor Terms and Conditions</a></li>
	          <li><a class="white-text" href="privacy.php" target="_blank">Privacy Policy</a></li>
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
	}

</script>
</body>
</html>
