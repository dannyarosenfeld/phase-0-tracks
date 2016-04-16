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



