extends Control

var button_sound = null

func _ready():
	pass


func play_sound():
	button_sound = get_node_or_null("/root/Main_Menu/Menu_Button")
	if button_sound != null:
		button_sound.play()
		
func _on_Play_Again_pressed():
	play_sound()
	yield(button_sound, "finished")
	get_tree().change_scene("res://Game.tscn")


func _on_Exit_pressed():
	play_sound()
	yield(button_sound, "finished")
	get_tree().quit()
