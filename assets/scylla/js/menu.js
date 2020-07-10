$(function(){
	//Hide SubLevel Menus
	$('#liste ul li ul').hide();

	//OnHover Show SubLevel Menus
	$('#liste ul li').hover(
		//OnHover
		function(){
			//Hide Other Menus
			$('#header ul li').not($('ul', this)).stop();

			//Add the Arrow
			$('ul li:first-child', this).before(
				'
	<li class="arrow">arrow</li>
'
			);

			//Remove the Border
			$('ul li.arrow', this).css('border-bottom', '0');

			// Show Hoved Menu
			$('ul', this).slideDown();
		},
		//OnOut
		function(){
			// Hide Other Menus
			$('ul', this).slideUp();

			//Remove the Arrow
			$('ul li.arrow', this).remove();
		}
	);

});