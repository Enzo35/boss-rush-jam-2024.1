extends CanvasLayer


func _ready():
	visible = false


func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		visible = !visible


func _on_resume_button_pressed():
	visible = !visible


func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")


func _on_settings_button_pressed():
	$Holder/BasicMenu.visible = !$Holder/BasicMenu.visible
	$Holder/SettingsMenu.visible = !$Holder/SettingsMenu.visible
