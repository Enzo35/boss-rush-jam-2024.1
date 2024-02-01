class_name charComponents
extends Node

@export var max_health: int = 100
@export var curr_health: float = 100.0
@export var attackPower: float = 1.0
@export var defense: float = 0.0

signal took_damage
signal died

func take_damage(damage: float):
	curr_health -= damage - defense
	took_damage.emit()
	if curr_health <= 0.:
		died.emit()
	took_damage.emit()


func attack(target: Node, damageMutplier: float = 1):
	if target.statsComponents.has_method("take_damage"):
		target.statsComponents.take_damage(attackPower*damageMutplier)
