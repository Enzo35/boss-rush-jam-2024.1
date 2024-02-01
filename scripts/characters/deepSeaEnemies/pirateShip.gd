extends TextureRect

@onready var statsComponents: Node = $charComponents
@export var targets: Node

var dead = false

signal fineshed_turn

func _on_char_components_died():
	dead = true

func enemy_turn():
	position.y += 50
	for i in targets.partyMembers:
		statsComponents.attack(i)
	fineshed_turn.emit()
