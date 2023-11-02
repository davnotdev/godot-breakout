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
	var brick_size = test_brick.get_size()
	test_brick.queue_free()

	var start_x = (
		spawn_start.position.x - brick_size.x * (ROWS / 2.0) - floorf(ROWS / 2.0) * margin.x
	)

	for i in COLUMNS:
		for j in ROWS:
			var brick = brick_scene.instantiate() as Brick
			add_child(brick)
			brick.set_level(COLUMNS - i)
			brick.set_position(
				Vector2(start_x + margin.x * j, spawn_start.position.y + margin.y * i)
			)
			brick.brick_destroyed.connect(on_brick_destroyed)

	# var row_width = brick_size.x * COLUMNS + margin.x * (COLUMNS - 1)
	# var spawn_position_x = (-row_width + brick_size.x + margin.x) / 2
	# var spawn_position_y = spawn_start.position.y

	# for j in ROWS:
	# for i in COLUMNS:
	# var brick = brick_scene.instantiate() as Brick
	# add_child(brick)
	# brick.set_level(ROWS - j)
	# var x = spawn_position_x + i * (margin.x + brick.get_size().x)
	# var y = spawn_position_y + j * (margin.y + brick.get_size().y)
	# brick.set_position(Vector2(x, y))
	# brick.brick_destroyed.connect(on_brick_destroyed)


func on_brick_destroyed():
	brick_count -= 1
	if brick_count == 0:
		ball.stop_ball()
