extends Node2D

signal start_over()

func enable(won: bool, character: Shared.Characters):
	if won:
		$Status.text = "You won!"
	else:
		$Status.text = "You lost :("

	match (character):
		Shared.Characters.WARRIOR:
			$Warrior.show()
		Shared.Characters.WIZARD:
			$Wizard.show()
		Shared.Characters.WITCH:
			$Witch.show()

	show()


func _on_start_over_pressed() -> void:
	start_over.emit()
	hide()
	$Warrior.hide()
	$Wizard.hide()
	$Witch.hide()
