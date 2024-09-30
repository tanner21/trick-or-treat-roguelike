extends Node
class_name GameState

const Characters = Shared.Characters
const Candy = Shared.Candy

var character: Characters
var basket: Array[CandyClass]

func _init(state) -> void:
	character = state["character"]
	
	# 4 x 4 x 2
	# 4 Fun sized Crunch x 4 Fun sized Fruit Gummies x 2 Fun sized Special based on class
	var crunch_bar = Shared.get_candy(Shared.Candy.CRUNCH)
	var fruit_gummy = Shared.get_candy(Shared.Candy.FRUIT_GUMMIES)
	
	for i in 4:
		basket.push_back(crunch_bar)
		
	for i in 4:
		basket.push_back(fruit_gummy)

	match character:
		Shared.Characters.WARRIOR:
			# Warrior (Michelanglo - TMNT)
			# Special - Rock
			var rock = Shared.get_candy(Shared.Candy.ROCK)
			basket.push_back(rock)
			basket.push_back(rock)
		Shared.Characters.WIZARD:
			# Wizard (Scorpian - Mortal Kombat)
			# Special - Now and Later
			var now_and_later = Shared.get_candy(Shared.Candy.NOW_AND_LATER)
			basket.push_back(now_and_later)
			basket.push_back(now_and_later)
		Shared.Characters.WITCH:
			# Witch (Care bear)
			# Special - Gummy bears
			var gummy_bears = Shared.get_candy(Shared.Candy.GUMMY_BEARS)
			basket.push_back(gummy_bears)
			basket.push_back(gummy_bears)
