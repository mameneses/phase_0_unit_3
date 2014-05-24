$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'gray'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body')
window.bodyElement = bodyElement

var h1Element = $('h1')
window.h1Element = h1Element

var mascotElement = $('.mascot')
window.mascotElement = mascotElement

var imgElement = $('img')
window.imgElement = imgElement

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$('h1').css({'color': 'blue', 'border-style':'outset', 'border-color': 'blue'})
 
$('div.mascot h1').html('Chorus Frogs')
 
//RELEASE 3: Event Listener
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://dwrcdc.nr.utah.gov/rsgis2/images/Photos/pseumacu.jpg')
  })
 
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
