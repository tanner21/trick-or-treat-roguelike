extends Node2D

const Characters = Shared.Characters

var state: GameState

func _on_start_character_select(character: Characters) -> void:
	state = GameState.new({ "character": character })
	$CharacterName.text = Shared.get_character_name(character)
	$"First Neighborhood".start()

func _on_first_neighborhood_finish() -> void:
	$"First Neighborhood".hide()
	$Finish.enable(true, state.character)


func _on_finish_start_over() -> void:
	$Start.show()
