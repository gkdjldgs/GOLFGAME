extends Node2D

var mousepos = null
var _is_mouse_down := false
@onready var _ball = $magicball

func _ready():
	pass # Replace with function body.
func _process(delta):
	pass


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				_is_mouse_down = true
			else:
				_is_mouse_down = false
	if event is InputEventMouseButton and _is_mouse_down:
		mousepos = get_local_mouse_position()
	else:
		mousepos = null
		
	queue_redraw()
		
func _draw():
	if mousepos != null:
		draw_line(_ball.position, mousepos, Color.YELLOW, 7)
