extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_pressed() -> void:
	if autoload.highest >= 4 or autoload.testing == 1:
		autoload.level = 5
		autoload.bases()
		autoload.passes()
	else:
		pass
