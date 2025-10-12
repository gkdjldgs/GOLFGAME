extends RichTextLabel

var texting = "PAR: "
func _process(delta: float) -> void:
		var text = str(texting, str(autoload.strikeout))
		self.text = (text)
