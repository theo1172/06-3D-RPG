extends Control

var button_sound = null

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func _on_Continue_pressed():
	if visible:
		hide()
		get_tree().paused = false

func _on_Quit_pressed():
	get_tree().quit()
