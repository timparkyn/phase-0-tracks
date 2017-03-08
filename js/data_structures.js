// delcalre 


var colors = ["blue", "green", "red", "purple"];

var name = ["Ed", "Pokey", "Bill", "Chex_Party_Mix"];

colors.push("orange");

name.push("Bob");



horses = {}

for (var i = 0; i < name.length; i++) {

	horses[name[i]] = colors[i]

}

console.log(horses)


// ---------------------------

function car(weight, type) {

	this.weight = weight;
	this.type = type;
	this.make = function() {
		console.log("Honda");

	}
}

var newCar = new car(2800, 'electric');

console.log(newCar);

newCar.make();







