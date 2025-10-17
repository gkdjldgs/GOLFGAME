extends RichTextLabel


var texting = "Fruits left: "
func _process(delta: float) -> void:
	if autoload.fruit >= 0:
		var text = str(texting, str(autoload.fruit))
		self.text = (text)
	elif autoload.fruit < 0:
		pass
