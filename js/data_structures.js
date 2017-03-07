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