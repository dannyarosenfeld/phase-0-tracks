var colors = ["blue", "cyan", "aqua", "violet"];
var names = ["Ed", "Jim", "Angela", "Mary"];

colors.push("puke green");
names.push("jimmy");

names_colors = {}

for (i = 0; i < colors.length && i < names.length; i++ ){
	names_colors[colors[i]]= names[i];

}


console.log(names_colors);