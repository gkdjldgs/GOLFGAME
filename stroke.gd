extends RichTextLabel

var texting = "STROKE: "
func _process(delta: float) -> void:
	var text = str(texting, str(autoload.stroke))
	self.text = (text)
