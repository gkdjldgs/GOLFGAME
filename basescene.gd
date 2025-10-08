extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
var mousepos = null
var ismousedown = false
@onready var ball = $magicball

func _input(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				ismousedown = true
			else:
				ismousedown = false
	if event is InputEventMouseButton and ismousedown:
		mousepos = get_local_mouse_position()
	else:
		mousepos = null
		
		queue_redraw()
		
func lines():
	if mousepos != null:
		draw_line(ball.position, mousepos, Color.YELLOW, 7)
