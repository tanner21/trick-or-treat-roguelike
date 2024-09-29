extends Node
class_name Enemy

@export var health: int = 10

var is_dazed := false
var is_tied_up := false
var next_move: MOVES = MOVES.ATTACK
var eat_at_start_of_turn = null # int or null

enum MOVES {
	ATTACK, DEFEND, SPECIAL
}

func _init(starting_health):
	health = starting_health

func start_turn():
	if eat_at_start_of_turn:
		eat(eat_at_start_of_turn)
		eat_at_start_of_turn = null
		
	# Reset on start of turn
	is_dazed = false
	is_tied_up = false

	# pick next move
	var enum_size = MOVES.size()
	var random_index = int(randf() * enum_size)  # randf() gives a float in the range [0.0, 1.0)
	next_move = MOVES.values()[random_index]
	
func attack(player):
	match (next_move):
		MOVES.ATTACK, MOVES.SPECIAL:
			player.eat(2)
		MOVES.DEFEND:
			health += 2
	
func eat(power: int):
	health -= power
	if health <= 0:
		die()
		
func daze():
	is_dazed = true

func tie_up():
	is_tied_up = true
	
func eat_again(power):
	eat_at_start_of_turn = power
		
func die():
	# animation
	queue_free()
