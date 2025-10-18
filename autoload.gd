extends Node2D
var visibility = false
var testing = 1
var level  = 1
var highest = 1
var stroke = 0
var fruit = 0
var par = 0
var strikeout = 0
var melon = 1
var passt = 2
func bases():
	if level == 1:
		stroke = 0
		fruit = 2
		par = 3
		strikeout = 4
	elif level == 2:
		stroke = 0
		fruit = 3
		par = 4
		strikeout = 6
	elif level == 3:
		stroke = 0
		fruit = 2
		par = 7
	elif level == 4:
		stroke = 0
		fruit = 3
		par = 2
	elif level == 5:
		stroke = 0
		fruit = 4
		par = 6
func passes():
	stroke = 0
	if level == 1:
		get_tree().change_scene_to_file("res://Holenumber2.tscn")
		level = 2
		bases()
	elif level == 2:
		get_tree().change_scene_to_file('res://Holenumber3.tscn')
		level = 3
		bases()
	elif level == 3:
		get_tree().change_scene_to_file('res://Holenumber4.tscn')
		level == 4
		bases()
	elif level == 4:
		get_tree().change_scene_to_file("res://Holenumber5.tscn")
		level = 5
		bases()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bases()

func highscore():
	if highest < level:
		highest = level
	elif highest >= level:
		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


		
