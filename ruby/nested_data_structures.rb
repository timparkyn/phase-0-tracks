# campgear   
# bigbluebag = sleeping bag, sheets, pillow, sleep pad
# lighting = electric lantern, headlight 1, headlght 2, 4 in flashlight
# food and bev = stove, gas, :cooler, drygoods, 
# ondeck = waterbag, safety gear, hat, speaker, phone, keys, sunscreen, flips


campgear = {
	'bigbluebag' => [
			'sleeping bag', 
			'pillow', 
			'sheets', 
			'sleep pad'
	],
	'lighting' => [
		'headlight 1', 
		'headlight 2',
		 '4inch flashlight',
		 'latern' 
	],
	'food and bev' => [
		'stove',
		'gas',
		'cooler',
		'drygoods bag'
	],
	'ondeck' => [
		'waterbag',
		'safety',
		'hat',
		'flips',
		'speaker'
	]

}


puts campgear

p ' '

puts campgear['bigbluebag'][2]

campgear['bigbluebag'][2] = 'bedsheet'

p ' '

puts campgear['bigbluebag'][2]

campgear['ondeck'].push('beverage')

puts campgear

campgear['lighting'][1] = 'headlamp blue'

puts campgear['lighting'][1]

puts campgear['bigbluebag'][2].capitalize
















