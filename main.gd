extends Control

@onready var set_video = preload("res://scripts/general/setVideo.gd").new()
@onready var windowDisplayButton = $SettingsMenu/VideoGridContainer/DisplayOptionButton
@onready var windowResolutionButton = $SettingsMenu/VideoGridContainer/ResolutionOptionButton


func _ready():
	for i in set_video.WINDOW_DISPLAY_ARRAY:
		windowDisplayButton.add_item(i)
		
	for i in set_video.WINDOW_RESOLUTION_DIC:
		windowResolutionButton.add_item(i)
	print(DisplayServer.WINDOW_MODE_WINDOWED)
	print(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_close_settings_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$SettingsMenu.visible = !$SettingsMenu.visible


func _on_close_credits_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$CreditsMenu.visible = !$CreditsMenu.visible


func _on_settings_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$SettingsMenu.visible = !$SettingsMenu.visible


func _on_credits_button_pressed():
	$MainMenu.visible = !$MainMenu.visible
	$CreditsMenu.visible = !$CreditsMenu.visible


func _on_display_option_button_item_selected(index):
	set_video.set_display(set_video.WINDOW_DISPLAY_ARRAY[index])


func _on_resolution_option_button_item_selected(index):
	set_video.set_resolution(set_video.WINDOW_RESOLUTION_DIC.values()[index])


func _on_master_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)
	print(AudioServer.get_bus_name(0))
	print(AudioServer.get_bus_volume_db(0))


func _on_music_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1, value)
	print(AudioServer.get_bus_name(1))
	print(AudioServer.get_bus_volume_db(1))


func _on_sound_fxh_slider_value_changed(value):
	AudioServer.set_bus_volume_db(2, value)
	print(AudioServer.get_bus_name(2))
	print(AudioServer.get_bus_volume_db(2))
