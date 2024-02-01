extends CanvasLayer

@onready var partyMembers = [$BattleHud/PlayerParty/HBoxContainer/redChar, $BattleHud/PlayerParty/HBoxContainer/greenChar, 
	$BattleHud/PlayerParty/HBoxContainer/blueChar, $BattleHud/PlayerParty/HBoxContainer/yellowChar]

var openTurns = []
var closedTurns = []
var currTurn = null

@export var attack_target: Node

signal finised_turn


func _ready():
	openTurns = [$PlayerParty/HBoxContainer/redChar, $PlayerParty/HBoxContainer/greenChar, 
	$PlayerParty/HBoxContainer/blueChar, $PlayerParty/HBoxContainer/yellowChar]
	closedTurns.clear()
	currTurn = null


func new_turn():
	openTurns = [$PlayerParty/HBoxContainer/redChar, $PlayerParty/HBoxContainer/greenChar, 
	$PlayerParty/HBoxContainer/blueChar, $PlayerParty/HBoxContainer/yellowChar]
	closedTurns.clear()
	currTurn = null
	
	for i in openTurns:
		i.position.y += 50


func process_turn(actor: Node):
	closedTurns.append(actor)
	openTurns.erase(actor)
	currTurn = null
	print(len(closedTurns))
	if len(closedTurns) == 4:
		finised_turn.emit()


func _on_fight_button_pressed():
	if currTurn:
		currTurn.statsComponents.attack(attack_target)
		process_turn(currTurn)


func _on_defend_button_pressed():
	if currTurn:
		#currTurn.statsComponents.attack(attack_target)
		process_turn(currTurn)


func _on_exchange_button_pressed():
	pass # Replace with function body.


func _on_red_char_focused_in(focus):
	if focus in openTurns:
		focus.position.y -= 50
		currTurn = focus


func _on_green_char_focused_in(focus):
	if focus in openTurns:
		focus.position.y -= 50
		currTurn = focus


func _on_blue_char_focused_in(focus):
	if focus in openTurns:
		focus.position.y -= 50
		currTurn = focus


func _on_yellow_char_focused_in(focus):
	if focus in openTurns:
		focus.position.y -= 50
		currTurn = focus
