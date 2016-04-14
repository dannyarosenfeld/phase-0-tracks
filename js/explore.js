/*
Create function called reverse with word as a parameter
declare an empty string variable
make for loop with i equal to the input words length
as long as i is greater than or eaql to zero print each letter backwards
add each letter to the empty string
return the string outside of the for loop
outside of the function call the function inside of a console log statement
*/

function reverse(word){
	var string = '';
	for(var i = word.length; i>=0; i--){
		string += word[i];
	}
	return string;
}

var reverseAbcd = reverse("abcd");

	if (1 == 1){
	 	console.log(reverseAbcd);
	}
	else{
		console.log("abcd")
	}