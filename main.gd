extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")