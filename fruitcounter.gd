extends RichTextLabel


var texting = "Fruits left: "
func _process(delta: float) -> void:
		var text = str(texting, str(autoload.fruit))
		self.text = (text)
