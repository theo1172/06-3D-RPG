extends Control

var button_sound = null

func _ready():
	$Label.text = "Your score: " + str(Global.score) + "\nThanks for playing!"
		
func _on_Play_Again_pressed():
	Global.score = 0
	Global.health = 100
	yield(button_sound, "finished")
	get_tree().change_scene("res://Levels/Level_1/Level_1.tscn")


func _on_Exit_pressed():
	yield(button_sound, "finished")
	get_tree().quit()
