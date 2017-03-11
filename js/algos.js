var phrases = ["long phrase","longest phrase","longer phrase", "way way longer phrase"];

var interjections = ["seriously", "no way", "shut up", "uh uh"];

var teams = ["Raiders", "49ers", "Chargers", "Rams"];

var longest = "";

function sorter(array) {

	longest = array[0];

	for (i=0; i < array.length ; i++) {

		if (longest.length < array[i].length)

			longest = array[i]

	}

	console.log(longest);

}


function compare(object1, object2) {

// while loop true/false?
	// object1.each do |key, value|

	// 	object2.each do |key0, value0|

	// 		if object2[key0] == object1[key]

	// 			if key0 == key

	// 				console.log("true");


	// 	end

	// 	if 

	// end

}





sorter(phrases);

sorter(interjections);

sorter(teams);



