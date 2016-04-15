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
	var word;
	for (var i = 0; i < ary.length; i++){
		if (ary[i].length > length){
			var length = ary[i].length;
			var word = ary[i];
			
		}
	}
	console.log(word);
}

findLongest(["small string", "medium string", "longest craziest string ever", "string"])

/*FIRST LOOP
ary[0] > 12*/
