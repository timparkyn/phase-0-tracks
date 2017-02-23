

ride_supplies = {
	:waterbag => 1,
	:tubes => 2,
	:bars => 4,
	:tire_irons => 4,
	:multitool=> 1,
	:edibles => 3
}

p ride_supplies

# adding to value in a hash using symbol
ride_supplies[:tubes] += 3

p ride_supplies




bikes = ['5 spot', 'GF02', 'Synapse', 'Pubic', 'Superlight']

# changing value in an array
bikes[0] = 'five spot'

p bikes[0]
p bikes[2].upcase



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
		'lantern' 
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

# replace value
campgear['bigbluebag'][2] = 'bedsheet'

p ' '

p campgear['bigbluebag'][2]

# adding a new value to array
campgear['ondeck'].push('beverage')

p campgear

# replacing value
campgear['lighting'][1] = 'headlamp blue'

p campgear['lighting'][1]

#adding to exiting string
campgear['ondeck'][1] << ' gear'

p campgear

# capitalizing and updating an array item 
campgear['lighting'][3].capitalize!

# upcasing
p campgear['bigbluebag'][2].upcase

p campgear

#checks contents to see if empty
p campgear.empty?

# changes hash into nested arrays
a_campgear = campgear.to_a

p a_campgear

# printing a nested array
p a_campgear[3]
























