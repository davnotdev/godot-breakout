extends Node

class_name BrickSpawner

const COLUMNS = 6
const ROWS = 5

@onready var ball = $"../Ball" as Ball
@onready var ui = $"../UI" as UI

@export var brick_scene: PackedScene
@export var margin: Vector2 = Vector2(10, 10)
@export var spawn_start: Marker2D

var brick_count = 0


func _ready():
	spawn()


func spawn():
	var test_brick = brick_scene.instantiate() as Brick
	add_child(test_brick)
	var brick_size = test_brick.get_size() * 4
	test_brick.queue_free()

	var start_x = (
		spawn_start.position.x
		- brick_size.x * (ROWS / 2.0)
		- margin.x * (ROWS / 2.0)
		+ brick_size.x / 2.0
	)

	for i in COLUMNS:
		for j in ROWS:
			var brick = brick_scene.instantiate() as Brick
			add_child(brick)
			brick.set_level(COLUMNS - i)
			brick.set_position(
				Vector2(
					start_x + (margin.x + brick_size.x) * j,
					spawn_start.position.y + (margin.y + brick_size.y) * i
				)
			)
			brick.brick_destroyed.connect(on_brick_destroyed)


func on_brick_destroyed():
	brick_count -= 1
	if brick_count == 0:
		ball.stop_ball()
