extends Node2D
@onready var visibility = autoload.visibility
func vis():
	
	if visibility == true:
		show()
	else:
		pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	vis()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vis()
	var name = get_tree().get_current_scene().name
	var nam = var_to_str(name)
	print(nam)


#func _on_area_2d_body_entered(body: Node2D) -> void:
	#var name = get_tree().get_current_scene().get_name
	#var nam = var_to_str(name)
	#print(nam)
	#if nam == ("basescene"):
	#	get_tree().change_scene_to_file("res://Holenumber2.tscn")
		#levelling = levelling + 1
	#if levelling == 2:
#		get_tree().change_scene_to_file("res://Holenumber1.tscn")
