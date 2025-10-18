extends Node2D
@onready var visibility = autoload.visibility
func vis():
	if autoload.fruit == 0:
		if autoload.visibility == false:
			visibility = true
			show()
	elif autoload.fruit > 0 and visibility == true:
		visibility = false
		hide()
	elif autoload.fruit < 0 and visibility == false:
		hide()
	else:
		pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vis()


func _on_area_2d_body_entered(body: RigidBody2D) -> void:
	if visibility == true and autoload.fruit == 0:
		autoload.highscore()
		await autoload.passes()
		autoload.bases()
	elif visibility == false:
		pass
	else:
		pass
