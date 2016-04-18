var colors = ["blue", "cyan", "aqua", "violet"];
var names = ["Ed", "Jim", "Angela", "Mary"];

colors.push("puke green");
names.push("jimmy");

names_colors = {}

for (i = 0; i < colors.length; i++ ){
	names_colors[colors[i]]= names[i];

}


console.log(names_colors);

function Car(type, color, transmission){
	
	console.log("our new car:",this)

	this.type = type;
	this.color = color;
	this.transmission = transmission;

	this.drive = function(){
		console.log("Vroom Vroom this " + color + " " + this.type + " goes fast!");
	}
}

var car1 = new Car("Porche", "smoke grey", "manual");

console.log(car1.drive() + car1);


console.log(names_colors);


for (var a in names_colors) {
  console.log("obj." + a + " = " + names_colors[a]);
}