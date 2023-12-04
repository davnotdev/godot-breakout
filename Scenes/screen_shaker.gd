extends Camera2D

signal wall_hit

var screen_shake = false


func _process(delta):
	if screen_shake:
		position.x = sin(Time.get_ticks_msec()) * 3.0
		position.y = cos(Time.get_ticks_msec()) * 2.0


func _on_ball_wall_hit():
	screen_shake = true
	await get_tree().create_timer(0.05).timeout
	screen_shake = false
