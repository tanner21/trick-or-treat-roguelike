extends Node

enum Characters {
	WARRIOR, WIZARD, WITCH
}

func get_character_name(character: Characters):
	match character:
		Characters.WARRIOR:
			return 'Warrior'
		Characters.WIZARD:
			return 'Wizard'
		Characters.WITCH:
			return 'Witch'


enum Candy {
	# Unhealthy
	REESES, # 5
	TWIX, # 4
	HERSHEY_BAR, # 4
	KITKAT, # 3
	CRUNCH, # 2
	# Healthy
	LIFESAVERS, # -5
	WERTHERS, # -4
	APPLE, # -4
	HEATH, # -3
	FRUIT_GUMMIES, # -2
	# Special
	ROCK, # Damage and daze someone for a turn
	NOW_AND_LATER, # Damage and attack again next turn
	GUMMY_BEARS, # Takes damage for you next turn
	NERDS_ROPE, # Tie up someone for next turn
	SWEDISH_FISH # Damage all enemies
}

var candy_names = {
	# Unhealthy
	Candy.REESES: "REESES",
	Candy.TWIX: "TWIX",
	Candy.HERSHEY_BAR: "HERSHEY BAR",
	Candy.KITKAT: "KIT KAT",
	Candy.CRUNCH: "CRUNCH",
	# Healthy
	Candy.LIFESAVERS: "LIFESAVERS",
	Candy.WERTHERS: "WERTHER'S",
	Candy.APPLE: "APPLE",
	Candy.HEATH: "HEATH BAR",
	Candy.FRUIT_GUMMIES: "FRUIT GUMMIES",
	# Special
	Candy.NOW_AND_LATER: "NOW AND LATER",
	Candy.ROCK: "ROCK",
	Candy.GUMMY_BEARS: "GUMMY BEARS",
	Candy.NERDS_ROPE: "NERDS ROPE",
	Candy.SWEDISH_FISH: "SWEDISH FISH",
	
	#Candy.SNICKERS: "SNICKERS",
	#Candy.M_AND_MS: "M&Ms",
	#Candy.KITKAT: "KITKAT",
	#Candy.MILKY_WAY: "MILKY WAY",
	#Candy.HERSHEY_KISS: "HERSHEY KISS",
	#Candy.SOUR_PATCH_KIDS: "SOUR PATCH KIDS",
	#Candy.JOLLY_RANCHERS: "JOLLY RANCHERS",
	#Candy.LOLLIPOPS: "LOLLIPOPS",
	#Candy.RING_POPS: "RING POPS",
	#Candy.LEMONHEADS: "LEMONHEADS",
	#Candy.ATOMIC_FIREBALLS: "ATOMIC FIREBALLS",
	#Candy.STARBURST: "STARBURST",
	#Candy.SKITTLES: "SKITTLES",
	#Candy.CANDY_CORN: "CANDY CORN",
	#Candy.JELLY_BEANS: "JELLY BEANS",
}

func get_candy_name(candy: Candy):
	return candy_names[candy]

enum CandyLevel {
	FUN_SIZE, REGULAR_SIZE, KING_SIZE, PARTY_SIZE
}

var candy_level_multiplier = {
	CandyLevel.FUN_SIZE: 1, 
	CandyLevel.REGULAR_SIZE: 2,
	CandyLevel.KING_SIZE: 3, # Also hits random enemy
	CandyLevel.PARTY_SIZE: 3 # Does damage to all enemies
}

func get_multiplier_power(level: CandyLevel) -> int:
	return candy_level_multiplier[level]

func get_candy(candy: Candy, level: CandyLevel = CandyLevel.FUN_SIZE):
	var candy_base = { "type": candy, "level": level }
	match (candy):
		Candy.REESES:
			add_candy_details(candy_base, 5)
		Candy.TWIX:
			add_candy_details(candy_base, 4)
		Candy.HERSHEY_BAR:
			add_candy_details(candy_base, 4)
		Candy.KITKAT:
			add_candy_details(candy_base, 3)
		Candy.CRUNCH:
			add_candy_details(candy_base, 2)
		Candy.LIFESAVERS:
			add_candy_details(candy_base, -5)
		Candy.WERTHERS:
			add_candy_details(candy_base, -4)
		Candy.APPLE:
			add_candy_details(candy_base, -4)
		Candy.HEATH:
			add_candy_details(candy_base, -3)
		Candy.FRUIT_GUMMIES:
			add_candy_details(candy_base, -2)
		Candy.ROCK:
			add_candy_details(candy_base, 5)
		Candy.NOW_AND_LATER:
			add_candy_details(candy_base, 4)
		Candy.SWEDISH_FISH:
			add_candy_details(candy_base, 3)
		Candy.GUMMY_BEARS:
			add_candy_details(candy_base, 0)
		Candy.NERDS_ROPE:
			add_candy_details(candy_base, 0)
			
	return CandyClass.new(candy_base)

func add_candy_details(base: Dictionary, yum: int):
	base['yum'] = yum

func get_random_candy():
	var enum_size = Candy.size()
	var random_index = int(randf() * enum_size)  # randf() gives a float in the range [0.0, 1.0)
	return get_candy(random_index)
