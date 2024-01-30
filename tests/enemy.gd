extends CharacterBody2D

@export var HitPoint: int = 10
@export var str: int = 1

func attack(op):
	op.take_damage(str)
	$AnimationPlayer.play("attack")


func take_damage(damage: int):
	HitPoint -= damage
	print(name," took ", HitPoint, " of damage")
	if HitPoint <= 0:
		die()


func die():
	print("enemy died")
