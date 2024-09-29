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

func use(enemy: Enemy, player, all_enemies: Array[Enemy]):
	# Eat the candy
	var power = yum + Shared.get_multiplier_power(level)
	match (level):
		Level.FUN_SIZE, Level.REGULAR_SIZE:
			enemy.eat(power)
		Level.KING_SIZE:
			enemy.eat(power)
			var random_enemy = get_random_enemy(all_enemies, enemy)
			random_enemy.eat(power)
		Level.PARTY_SIZE:
			affect_all_enemies(all_enemies, power)

	# Apply candy special effect
	match (type):
		Candy.NOW_AND_LATER:
			# Do damage again next turn
			enemy.eat_again(power)
		Candy.ROCK:
			# Daze
			enemy.daze()
		Candy.GUMMY_BEARS:
			player.protect()
		Candy.NERDS_ROPE:
			enemy.tie_up()
		Candy.SWEDISH_FISH:
			affect_all_enemies(all_enemies, power)
				

func affect_all_enemies(all_enemies, power):
	for enemy in all_enemies:
		enemy.eat(power)
		
func get_random_enemy(all_enemies: Array[Enemy], enemy: Enemy) -> Enemy:
	var valid_enemies = all_enemies.filter(func (maybe_enemy):
		return maybe_enemy.id != enemy.id
	)
	
	return valid_enemies.pick_random()

func level_up():
	match level:
		Level.FUN_SIZE:
			level = Level.REGULAR_SIZE
		Level.REGULAR_SIZE:
			level = Level.KING_SIZE
		Level.KING_SIZE:
			level = Level.PARTY_SIZE
