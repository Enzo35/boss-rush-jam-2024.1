extends Node


var WINDOW_RESOLUTION_DIC: Dictionary = {
	"1980x1080" : Vector2i(1980, 1080),
	"1600x900" : Vector2i(1600, 900),
	"1366x768" : Vector2i(1366, 768),
	"1280x720" : Vector2i(1280, 720),
	"1024x576" : Vector2i(1024, 576)
}

var WINDOW_DISPLAY_ARRAY: Array[String] = [
	"FullScreen",
	"Windowed"
]


func set_resolution(newRes: Vector2i):
	DisplayServer.window_set_size(newRes)

func set_display(newDisplay: String):
	if newDisplay == WINDOW_DISPLAY_ARRAY[0]:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	elif newDisplay == WINDOW_DISPLAY_ARRAY[1]:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
