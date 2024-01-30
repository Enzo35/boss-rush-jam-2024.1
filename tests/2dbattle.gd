extends Node2D

@onready var players: Array = [$Party/p1, $Party/p2, $Party/p3, $Party/p4]

@onready var allChars: Array = [$Party/p1, $Party/p2, $Party/p3, $Party/p4, $enemy]

@export var currTurn: int = 0

var weaponsList = ["res://assets/props/emerald_katar.png", "res://assets/props/halberd.png", 
"res://assets/props/mirror_shield.png", "res://assets/props/sluggers_gamble_v1.png"]

var processTurn = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func turn(on):
	if on:
		pass
	pass


func _on_p_1_button_pressed():
	players[0].attack(allChars[-1])


func _on_p_2_button_pressed():
	players[1].attack(allChars[-1])


func _on_p_3_button_pressed():
	players[2].attack(allChars[-1])


func _on_p_4_button_pressed():
	players[3].attack(allChars[-1])


func _on_exchange_button_pressed():
	$AnimWeapons/AnimationExchangeWeapon.play("left_exchange")
	await %AnimationExchangeWeapon.animation_finished
	weaponsList.append(weaponsList.pop_front())
	print(weaponsList)
	$Weapons/WeaponTexture1.change_weapon(weaponsList[0])
	$Weapons/WeaponTexture2.change_weapon(weaponsList[1])
	$Weapons/WeaponTexture3.change_weapon(weaponsList[2])
	$Weapons/WeaponTexture4.change_weapon(weaponsList[3])
