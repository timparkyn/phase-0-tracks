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


sorter(phrases);

sorter(interjections);

sorter(teams);

