

function reverse(word){
	var a = '';
	
	for(var i = word.length; i>=0; i--){
		a += word[i];
		
	}
	word = a
	console.log(typeof word);
	return word
}

 console.log("blah" + reverse("akunamatata"));



 console.log("blah");