extends Control


func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_close_credits_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$CreditsMenu.visible = !$CreditsMenu.visible


func _on_settings_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$SettingsMenu.visible = !$SettingsMenu.visible


func _on_credits_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$CreditsMenu.visible = !$CreditsMenu.visible
