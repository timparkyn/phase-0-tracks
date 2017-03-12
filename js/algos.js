var phrases = ["long phrase","longest phrase","longer phrase", "way way longer phrase"];

var interjections = ["seriously", "no way", "shut up", "uh uh"];

var teams = ["Raiders", "49ers", "Chargers", "Rams"];

var longest = "";

var bikes = { mtb:"Five Spot", road:"GranFondo 02", city:"Public"}

var thisWeek = { road: "GranFondo 02", dog: "Cyrus"}




function sorter(array) {

	longest = array[0];

	for (i=0; i < array.length ; i++) {

		if (longest.length < array[i].length)

			longest = array[i]

	}

	console.log(longest);

}


function compare(object1, object2) {

	// if indexof <> nil

	var array1 = Object.keys(object1);
	var array2 = Object.keys(object2);
	var condition = false

	for (i = 0; i < array1.length; i++) {

			console.log(array1.length);
		for (v = 0; v < array2.length; i++) {
				console.log(array2.length);
			if ((array2[v] == array1[v]) && (object1[i] == object2[v])) {

				condition = true;
				console.log( condition );

			}

		}

	}


	console.log( condition );

	//	indexOf

}


// 	var condition = false

// 	for (i = 0; i < object1.length; i++) {

// 		if object1.keys(object1[i]) == object2.keys(object2[i])

// 			for (v = 0; v < object2.length; v++) {

// 				if object1[v] == object2[v]

// 					condition = true

// 			}

// 	}

// 	return condition

// }

// while loop true/false?


// h.each(function(k, v) {
//     alert('key is: ' + k + ', value is: ' + v);
// });

// for each instance of object 1, check all the instances of object 2
// Object.keys(hash).forEach(function (key) {
// for(var index in map)
// (Object.keys(obj));}



	// var condition = false;

	// object1.keys (function(key, value) {

	// 	object2.keys (function(key0, value0) {

	// 	 		if ((object2[key0] == object1[key]) && (key0 == key)) {

	// 	 				console.log("true");

	//  					condition = true;

		 				

			



sorter(phrases);

sorter(interjections);

sorter(teams);

console.log(Object.keys(bikes));

compare(bikes, thisWeek);



