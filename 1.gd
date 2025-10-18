extends Button



func _on_pressed() -> void:
		if autoload.highest >= 0 or autoload.testing == 1:
			autoload.level = 1
			autoload.bases()
			autoload.passes()
