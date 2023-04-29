extends Node

var timer = 0
var score = 0
var health = 0
var menu = null

func _ready():
	update_score(0)
	update_health(100)

func reset():
	timer = 0
	score = 0

func _input(_event):
	if Input.is_action_just_pressed("quit"):
		menu = get_node_or_null("/root/Game/UI/Pause_Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.show()
			else:
				get_tree().paused = false
				menu.hide()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)
	
func update_time():
	var t_m = floor(timer / 60.0)
	var t_s = timer % 60
	var t = "Time: %03d" % t_m
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t

func update_health(h):
	if get_node("/root/Game/UI/Dialogue").visible == false:
		health += h
		get_node("/root/Game/UI/Health").text = "Health: " + str(health)
		if health <= 0:
			get_tree().change_scene("res://UI/You_Died.tscn")
