extends TextureRect

@onready var statsComponents = $charComponents

@onready var healthTracker: Node = $HealthBox/HealthNumber

signal focused_in(focus: Node)

func _ready():
	healthTracker.text = str(statsComponents.curr_health, "/", statsComponents.max_health)


func update_health(new_health):
	healthTracker.text = str(new_health, "/", statsComponents.max_health)


func update_char(charTexture: Texture):
	$CharTexture.texture = charTexture


func update_weapon(newWeapon: String):
	$WeaponTexture.texture = ResourceLoader.load(newWeapon)


func _on_select_button_mouse_entered():
	$SelectButton.size.y += 50
	position.y -= 50


func _on_select_button_mouse_exited():
	$SelectButton.size.y -= 50
	position.y += 50


func _on_select_button_pressed():
	focused_in.emit(self)


func _on_char_components_took_damage():
	update_health(statsComponents.curr_health)
