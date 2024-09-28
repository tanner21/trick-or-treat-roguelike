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
	REESES,
	TWIX,
	SNICKERS,
	M_AND_MS,
	KITKAT,
	MILKY_WAY,
	HERSHEY_BAR,
	HERSHEY_KISS,
	TOBLERONE,
	CRUNCH,
	GUMMY_BEARS,
	SWEDISH_FISH,
	SOUR_PATCH_KIDS,
	LIFESAVERS,
	JOLLY_RANCHERS,
	WERTHERS,
	LOLLIPOPS,
	RING_POPS,
	LEMONHEADS,
	ATOMIC_FIREBALLS,
	STARBURST,
	SKITTLES,
	NOW_AND_LATER,
	CANDY_CORN,
	JELLY_BEANS,
	ROCK
}

var candy_names = {
	Candy.REESES: "REESES",
	Candy.TWIX: "TWIX",
	Candy.SNICKERS: "SNICKERS",
	Candy.M_AND_MS: "M&Ms",
	Candy.KITKAT: "KITKAT",
	Candy.MILKY_WAY: "MILKY WAY",
	Candy.HERSHEY_BAR: "HERSHEY BAR",
	Candy.HERSHEY_KISS: "HERSHEY KISS",
	Candy.TOBLERONE: "TOBLERONE",
	Candy.CRUNCH: "CRUNCH",
	Candy.GUMMY_BEARS: "GUMMY BEARS",
	Candy.SWEDISH_FISH: "SWEDISH FISH",
	Candy.SOUR_PATCH_KIDS: "SOUR PATCH KIDS",
	Candy.LIFESAVERS: "LIFESAVERS",
	Candy.JOLLY_RANCHERS: "JOLLY RANCHERS",
	Candy.WERTHERS: "WERTHER'S",
	Candy.LOLLIPOPS: "LOLLIPOPS",
	Candy.RING_POPS: "RING POPS",
	Candy.LEMONHEADS: "LEMONHEADS",
	Candy.ATOMIC_FIREBALLS: "ATOMIC FIREBALLS",
	Candy.STARBURST: "STARBURST",
	Candy.SKITTLES: "SKITTLES",
	Candy.NOW_AND_LATER: "NOW AND LATER",
	Candy.CANDY_CORN: "CANDY CORN",
	Candy.JELLY_BEANS: "JELLY BEANS",
	Candy.ROCK: "ROCK"
}

func get_candy_name(candy: Candy):
	return candy_names[candy]

enum CandyLevel {
	FUN_SIZE, REGULAR_SIZE, KING_SIZE, PARTY_SIZE
}

func get_candy(candy: Candy, level: CandyLevel = CandyLevel.FUN_SIZE):
	var candy_base = { "type": candy, "level": level }
	match (candy):
		Candy.REESES:
			add_candy_details(candy_base, 5)
		Candy.TWIX:
			add_candy_details(candy_base, 4)
		Candy.SNICKERS:
			add_candy_details(candy_base, 6)
		Candy.M_AND_MS:
			add_candy_details(candy_base, 2)
		Candy.KITKAT:
			add_candy_details(candy_base, 4)
		Candy.MILKY_WAY:
			add_candy_details(candy_base, 8)
		Candy.HERSHEY_BAR:
			add_candy_details(candy_base, 5)
		Candy.HERSHEY_KISS:
			add_candy_details(candy_base, 2)
		Candy.TOBLERONE:
			add_candy_details(candy_base, 10)
		Candy.CRUNCH:
			add_candy_details(candy_base, 6)
		Candy.GUMMY_BEARS:
			add_candy_details(candy_base, 4)
		Candy.SWEDISH_FISH:
			add_candy_details(candy_base, 3)
		Candy.SOUR_PATCH_KIDS:
			add_candy_details(candy_base, 3)
		Candy.LIFESAVERS:
			add_candy_details(candy_base, -8)
		Candy.JOLLY_RANCHERS:
			add_candy_details(candy_base, 2)
		Candy.WERTHERS:
			add_candy_details(candy_base, -5)
		Candy.LOLLIPOPS:
			add_candy_details(candy_base, 1)
		Candy.RING_POPS:
			add_candy_details(candy_base, 1)
		Candy.LEMONHEADS:
			add_candy_details(candy_base, -2)
		Candy.ATOMIC_FIREBALLS:
			add_candy_details(candy_base, -4)
		Candy.STARBURST:
			add_candy_details(candy_base, 1)
		Candy.SKITTLES:
			add_candy_details(candy_base, 2)
		Candy.NOW_AND_LATER:
			add_candy_details(candy_base, -2)
		Candy.CANDY_CORN:
			add_candy_details(candy_base, 3)
		Candy.JELLY_BEANS:
			add_candy_details(candy_base, 2)
		Candy.ROCK:
			add_candy_details(candy_base, -10)
			
	return CandyClass.new(candy_base)

func add_candy_details(base: Dictionary, yum: int):
	base['yum'] = yum

func get_random_candy():
	var enum_size = Candy.size()
	var random_index = int(randf() * enum_size)  # randf() gives a float in the range [0.0, 1.0)
	return get_candy(random_index)
