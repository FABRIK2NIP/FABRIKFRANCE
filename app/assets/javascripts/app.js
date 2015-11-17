var main = function() {
  /* Push the body and the nav over by 285px over */
	var toggle = false;
  $('.icon-menu').on('click', function() {
	  if (toggle == false) {
	  
		  $('.menu').velocity({ left: "0px" }, { duration:650, easing: "swing"});
		  $('body').velocity({ left: "285px" },{ duration:650, easing: "swing"});


	
	toggle = true;
	
	 } else {
		
			$('.menu').velocity({ left: "-285px" }, {duration:650, easing: "swing"});
			$('body').velocity({left: "0px"}, {duration:650, easing: "swing"});
		  
		toggle = false;
	}
		
  });

  /* Then push them back */

};


$(document).ready(function(){
	document.querySelector( "#nav-toggle" ).addEventListener( "click", function() {
	  this.classList.toggle( "active" );
   });
});



$element = document.getElementById("headhead")
$element.velocity(
  { 
    opacity: 1, 
    top: "50%" 
  },
  { 
    display: "block" 
  }
);




$(document).ready(main);

