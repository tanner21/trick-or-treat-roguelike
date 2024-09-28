extends Node
class_name CandyClass

var type: Shared.Candy # e.g. SNICKERS
var level: Shared.CandyLevel # e.g. King Size
var candy_name: String # Readable name
var yum: int # if positive it's tasty, if negative it's healthy

func _init(props):
	type = props['type'] if props['type'] else Shared.Candy.SNICKERS
	level = props['level'] if props['level'] else Shared.CandyLevel.FUN_SIZE
	yum = props['yum']
	name = Shared.get_candy_name(type) # this should update the node's name in the tree
	candy_name = Shared.get_candy_name(type)
