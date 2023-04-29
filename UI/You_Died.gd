extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Label.text = "Better luck next time! Your score: " + str(Global.score) + "\nThanks for playing!"
		
func _on_Play_Again_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.reset()
	
func _on_Exit_pressed():
	get_tree().quit()
