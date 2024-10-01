extends Node2D

signal complete()

func enable(state: GameState, type: Shared.HOUSE_TYPE):
	show()

func _on_button_pressed() -> void:
	hide()
	complete.emit()
