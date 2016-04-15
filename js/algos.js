//create function taking array of words that returns the longest word in the array
/*
function longest(ary){
	for (i = 0; i < ary.length; i++){
		if (ary[i].length > 5){
			console.log(ary[i]);
		}
		else if (ary[i].length > 2){
			console.log(ary[i]);
		}
		else{
			i--
		}

	}

}


console.log(longest(["aaa", "aa", "ggg","bbbbb", "ccccccccccc"]))
*/

function(ary){
	var longest = 0;
	var word;
	for(i = 0; i < ary.length; i++){
		if (ary[i].length > longest){
			longest = ary[i].length;
			word = ary[i]
			console.log(word)

		}

	}
}