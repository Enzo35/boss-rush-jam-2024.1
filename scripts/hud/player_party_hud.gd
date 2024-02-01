extends Node

@onready var playerSettings = preload("res://scripts/general/player_settings.gd").new()

@export var redCharTexture: Texture
@export var greenCharTexture: Texture
@export var blueCharTexture: Texture
@export var yellowCharTexture: Texture

func _ready():
	$HBoxContainer/redChar.update_char(redCharTexture)
	#$HBoxContainer/redChar.update_weapon(playerSettings.party['redChar']['weapon'])
	
	$HBoxContainer/greenChar.update_char(greenCharTexture)
	#$HBoxContainer/greenChar.update_weapon(playerSettings.party['greenChar']['weapon'])
	
	$HBoxContainer/blueChar.update_char(blueCharTexture)
	#$HBoxContainer/blueChar.update_weapon(playerSettings.party['blueChar']['weapon'])
	
	$HBoxContainer/yellowChar.update_char(yellowCharTexture)
	#$HBoxContainer/yellowChar.update_weapon(playerSettings.party['yellowChar']['weapon'])
