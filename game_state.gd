extends Node
class_name GameState

const Characters = Shared.Characters
const Candy = Shared.Candy

var character: Characters
var basket: Array[CandyClass]

func _init(state) -> void:
	character = state["character"]
	var first_candy = Shared.get_random_candy()
	var second_candy = Shared.get_random_candy()
	basket.push_back(first_candy)
	basket.push_back(second_candy)
