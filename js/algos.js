var phrases = ["long phrase","longest phrase","longer phrase", "way way longer phrase"];

var interjections = ["seriously", "no way", "shut up", "uh uh"];

var teams = ["Raiders", "49ers", "Chargers", "Rams"];

var longest = "";

var bikes = { mtb:"Five Spot", road:"GranFondo 02", city:"Public"};

var thisWeek = { road: "GranFondo 02", dog: "Cyrus", cat: "Frankie", doggo: "Sunny"};

var trails = { Marin: "JCC", NevadaCity: "South Yuba", Truckee: "Yogi Bear", Meyers: "Armstrong" };



// release 0
function sorter(array) {

	longest = array[0];

	for (i=0; i < array.length ; i++) {

		if (longest.length < array[i].length)

			longest = array[i]

	}

	console.log(longest);

}


// release 1
function compare(object1, object2) {

	// make keys into an array
	var array1 = Object.keys(object1);
	var array2 = Object.keys(object2);

	var condition = false

	// for each kv pair in object1, compares to each kv pair in object2
	for (i = 0; i < array1.length; i++) {

		for (v = 0; v < array2.length; v++) {

			// console.log(array1[i], array2[v], object1[array1[i]], object2[array2[v]]);

			if ((array1[i] == array2[v]) && (object1[array1[i]] == object2[array2[v]])) {

				condition = true;	

			}

		}

	}

	console.log( condition );

}


function stringBuilder(integer) {

	words = ['seriously', 'sheisse', 'dogger', 'honestly', 'dank', 'artisinal', 'house-made', 'bespoke'];

	builtArray = {}

	for (i=0; i < integer; i++) {

		builtArray[i] = words[Math.floor(Math.random() * 9)];

	}

	console.log(builtArray);

}







// ------------ drive this ------------------
sorter(phrases);

sorter(interjections);

sorter(teams);

// positive/true outcome
compare(bikes, thisWeek);

// negative/false outcome
compare(trails, bikes);

stringBuilder(5);


