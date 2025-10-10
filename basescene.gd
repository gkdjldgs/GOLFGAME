extends Node2D
var color = Color.AZURE
var mousepos = null
var _is_mouse_down := false
@onready var _ball = $magicball
var stroke = 0
var level = 1

func _ready():
	pass
	
func _process(delta):
	pass
func requirements():
	if level <= 1:
		_ball.global_position = Vector2(-370, 280)
	elif level <= 2:
		_ball.global_position = Vector2(0, 0)
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				_is_mouse_down = true
			else:
				_is_mouse_down = false
				_mouse_released()
	if event is InputEventMouseMotion and _is_mouse_down:
		mousepos = get_local_mouse_position()
	else:
		mousepos = null
		
	queue_redraw()
		
func _draw():
	if mousepos != null:
		var endline = mousepos
		var distance = _ball.position.distance_to(endline)
		if distance > 150:
			var direction = (endline - _ball.position).normalized()
			endline = _ball.position + direction * 100
		if distance < 50:
			color = Color.AQUA
		elif distance < 100:
			color = Color.CORNFLOWER_BLUE
		elif distance < 150:
			color = Color.DARK_BLUE
		draw_line(_ball.position, endline, color, 7)

func _mouse_released():
	if mousepos != null and !_ball.is_moving():
		var endline = mousepos
		var distance = _ball.position.distance_to(endline)
		
		if distance > 100:
			var direction = (endline - _ball.position).normalized()
			endline = _ball.position + direction * 100
		
		var forceX = (endline.x - _ball.position.x) * 6
		var forceY = (endline.y - _ball.position.y) * 6
		
		_ball.apply_impulse(Vector2(-forceX, -forceY))
		stroke = stroke + 1
		
func nextlevel():
	if level == 1:
		pass
	elif level == 2:
		pass
	elif level == 3:
		pass
	elif level == 4:
		pass
