extends Node2D

const Characters = Shared.Characters

signal character_select(character: Characters)

func _on_warrior_pressed() -> void:
	character_select.emit(Characters.WARRIOR)
	hide()


func _on_wizard_pressed() -> void:
	character_select.emit(Characters.WIZARD)
	hide()

func _on_witch_pressed() -> void:
	character_select.emit(Characters.WITCH)
	hide()
