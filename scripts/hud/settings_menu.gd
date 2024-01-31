extends Control

@export var backNode: Node

@onready var set_video = preload("res://scripts/general/setVideo.gd").new()
@onready var windowDisplayButton = $VideoGridContainer/DisplayOptionButton
@onready var windowResolutionButton = $VideoGridContainer/ResolutionOptionButton


func _ready():
	for i in set_video.WINDOW_DISPLAY_ARRAY:
		windowDisplayButton.add_item(i)
		
	for i in set_video.WINDOW_RESOLUTION_DIC:
		windowResolutionButton.add_item(i)


func _on_close_settings_button_pressed():
	backNode.visible = !backNode.visible
	visible = !visible


func _on_display_option_button_item_selected(index):
	set_video.set_display(set_video.WINDOW_DISPLAY_ARRAY[index])


func _on_resolution_option_button_item_selected(index):
	set_video.set_resolution(set_video.WINDOW_RESOLUTION_DIC.values()[index])


func _on_master_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)


func _on_music_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1, value)


func _on_sound_fxh_slider_value_changed(value):
	AudioServer.set_bus_volume_db(2, value)
