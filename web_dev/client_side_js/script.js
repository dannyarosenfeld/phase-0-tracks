console.log("this file is linked");
alert("this file is linked");

var newPic = document.createElement('img');

newPic.src = "https://s-media-cache-ak0.pinimg.com/236x/36/a5/7b/36a57b0f0ab16e885fcc230addb695c2.jpg"

var orderedList = document.getElementsByClassName('upper-right');

var upper = orderedList[0];

upper.appendChild(newPic);

// attempt at looping through and styling elements by class

var paragraphs = document.getElementsByClassName("grey-border");

for(var i = 0; i< paragraphs.length; i++){
	paragraphs.item(i).style.background = 'pink';
}