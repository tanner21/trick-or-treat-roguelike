extends Node2D

signal complete()

func enable(state: GameState):
	show()

func _on_button_pressed() -> void:
	hide()
	complete.emit()
