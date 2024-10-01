extends Node
class_name GameState

const Characters = Shared.Characters
const Candy = Shared.Candy

var character: Characters
var basket: Array[CandyClass]

func _init(state) -> void:
	character = state["character"]
	
	# 4 Unhealthy x 4 Healthy x 2 Special
	var crunch_bar = Shared.get_candy(Shared.Candy.CRUNCH)
	var kitkat = Shared.get_candy(Shared.Candy.KITKAT)
	var fruit_gummy = Shared.get_candy(Shared.Candy.FRUIT_GUMMIES)
	var heath = Shared.get_candy(Shared.Candy.HEATH)
	
	# Unhealthy
	add_two_candies(crunch_bar)
	add_two_candies(kitkat)
	
	# Healthy
	add_two_candies(fruit_gummy)
	add_two_candies(heath)

	# Special
	match character:
		Shared.Characters.WARRIOR:
			# Warrior (Michelanglo - TMNT)
			# Special - Rock
			var rock = Shared.get_candy(Shared.Candy.ROCK)
			add_two_candies(rock)
		Shared.Characters.WIZARD:
			# Wizard (Scorpian - Mortal Kombat)
			# Special - Now and Later
			var now_and_later = Shared.get_candy(Shared.Candy.NOW_AND_LATER)
			add_two_candies(now_and_later)
		Shared.Characters.WITCH:
			# Witch (Care bear)
			# Special - Gummy bears
			var gummy_bears = Shared.get_candy(Shared.Candy.GUMMY_BEARS)
			add_two_candies(gummy_bears)

func add_two_candies(candy):
	for i in 2:
		basket.push_back(candy)
