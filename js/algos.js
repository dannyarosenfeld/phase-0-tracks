/*
create a function called findLongest with an array as a param
set variable length to zero
set variable word to nil
loop through each item of array
if the length of array item is greater than var length which has been set to 0
set var length to length of array item and set word to word item
console log the result of the function
*/

function findLongest(ary){
	var length = 0;
	var longestWord;
	for (var i = 0; i < ary.length; i++){
		if (ary[i].length > length){
			var length = ary[i].length;
			var longestWord = ary[i];
			
		}
	}
	console.log(longestWord);
}

findLongest(["small string", "longest craziest string", "medium string", "string"])

/*FIRST LOOP
ary[0] > 0 evaluates to true
length = 12
word = "small string"

SECOND LOOP
ary[1] > 12 evaluates to true
length = 24
word = "longest craziest string"

THIRD LOOP
ary[2] > 13 evaluates to false
length is still 24
word is still "longest craziest string"

LAST LOOP
ary[3] > 13 evaluates to false
length is still 24
word is still "longest craziest string"

Console log returns "longest craziest string"
*/

/*declare a function with two parameters
each of them should be objects
within the function iterate through one of the object params keys to see if it shares any key-value pairs with the second
If it does, return true.
If it doesn't share any keys with the second object return false.
*/


function matches(obj1, obj2){

	for(var key in obj1){
		if(obj1[key] == obj2[key]){
			return true;
		}
	}
	return false;
}



//test to make sure matches are strictly key-value pairs not just keys or values.
console.log(matches({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(matches({name: "Steven", year: 90}, {name: "Tamir", age: 54}));
console.log(matches({name: "Steven", year: 54}, {name: "Tamir", age: 54}));

/*declare a function makeArray with param integer
The integer should be the number of items in an array the function creates
define a string of possible characters

*/
function makeArray(integer){
	var possible = "abcdefghijkl";
	var string = "";
	var ary = [];

	for (i = 0; i < (Math.floor(Math.random() * 10 + 1)); i++ ){
	var randomLetter = possible[Math.floor(Math.random() * possible.length)];
	string += randomLetter;
	}

	for (i = 0; i < integer; i++){
		ary.push(string);

	}
	return ary;

}
	console.log(makeArray(8));







