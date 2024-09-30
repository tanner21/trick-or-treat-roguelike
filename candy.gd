extends Node
class_name CandyClass

const Candy = Shared.Candy
const Level = Shared.CandyLevel

var type: Candy # e.g. CRUNCH
var level: Shared.CandyLevel # e.g. King Size
var candy_name: String # Readable name
var yum: int # if positive it's tasty, if negative it's healthy

func _init(props):
	type = props['type'] if props['type'] else Candy.CRUNCH
	level = props['level'] if props['level'] else Level.FUN_SIZE
	yum = props['yum']
	name = Shared.get_candy_name(type) # this should update the node's name in the tree
	candy_name = Shared.get_candy_name(type)

func use(target: Node, all_targets: Array[Node]):
	# Eat the candy
	var power = yum + Shared.get_multiplier_power(level)
	match (level):
		Level.FUN_SIZE, Level.REGULAR_SIZE:
			target.eat(power)
		Level.KING_SIZE:
			target.eat(power)
			var random_enemy = get_random_target(all_targets, target)
			random_enemy.eat(power)
		Level.PARTY_SIZE:
			affect_all_enemies(all_targets, power)

	# Apply candy special effect
	match (type):
		Candy.NOW_AND_LATER:
			# Do damage again next turn
			target.eat_again(power)
		Candy.ROCK:
			# Daze
			target.daze()
		Candy.GUMMY_BEARS:
			target.protect()
		Candy.NERDS_ROPE:
			target.tie_up()
		Candy.SWEDISH_FISH:
			affect_all_enemies(all_targets, power)
				

func affect_all_enemies(all_targets: Array[Node], power: int):
	for target in all_targets:
		target.eat(power)
		
func get_random_target(all_targets: Array, target) -> Node2D:
	var valid_targets = all_targets.filter(func (maybe_target):
		return maybe_target.id != target.id
	)
	
	return valid_targets.pick_random()

func level_up():
	match level:
		Level.FUN_SIZE:
			level = Level.REGULAR_SIZE
		Level.REGULAR_SIZE:
			level = Level.KING_SIZE
		Level.KING_SIZE:
			level = Level.PARTY_SIZE
