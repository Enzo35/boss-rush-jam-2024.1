extends ColorRect

@export var HitPoint: int = 10
@export var str: int = 1


func attack(op):
	print(name, " attacked!")
	op.take_damage(str)


func take_damage(damage: int):
	HitPoint -= damage
	print(owner.name, " took damage:", HitPoint)
	if HitPoint <= 0:
		die()


func die():
	print(owner.name," died")
