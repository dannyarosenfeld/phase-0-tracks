function longestString(ary) {
	longest = 0
	for(var i = 0; i < (ary.length - 1); i++){
		if (ary[i].length > longest){
			var longest = ary[i].length;
			var word = ary[i];
		}
	}
return word;
}

console.log(longestString(["small string", "longest craziest string", "medium stringas;ldfjal;skdjf;askldjf;askdfj", "string"]));