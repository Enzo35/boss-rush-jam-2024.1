extends TextureRect


func curr_weapon():
	return texture.resource_path


func change_weapon(newWeapon: String):
	texture = ResourceLoader.load(newWeapon)
