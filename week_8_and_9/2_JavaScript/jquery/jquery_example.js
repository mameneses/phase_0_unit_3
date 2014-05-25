$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'gray'});
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body');
window.bodyElement = bodyElement;

var h1Element = $('h1');
window.h1Element = h1Element;

var mascotElement = $('.mascot');
window.mascotElement = mascotElement;

var imgElement = $('img');
window.imgElement = imgElement;

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$('h1').css({'color': 'green', 'border-style':'outset', 'border-color': 'green'});
 
$('div.mascot h1').html('Chorus Frogs');
 
//RELEASE 3: Event Listener
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://dwrcdc.nr.utah.gov/rsgis2/images/Photos/pseumacu.jpg')
  })
 
  $('img').on('click', function(e){
     e.preventDefault()
    $(this).attr('src', 'https://raw.githubusercontent.com/mameneses/phase_0_unit_3/master/week_8_and_9/2_JavaScript/jquery/dbc_logo.jpg')
  })
 
//RELEASE 4 : Experiment on your own

 

//  $('img').on('dblclick',( function() {
// 	$('img').animate({
// 		boarder-style "outset",
// 		width: "80%"
// 	}, 1500 )
// })
// 
// I could not get this to work!
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
