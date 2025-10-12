extends Node2D
var visibility = false
var level  = 1
var stroke = 0
var fruit = 0
var par = 0
var strikeout = 0

func bases():
	if level == 1:
		stroke = 0
		fruit = 2
		par = 3
		strikeout = 4

func passes():
	stroke = 0
	if level == 1:
		get_tree().change_scene_to_file("res://Holenumber2.tscn")
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bases()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


		
