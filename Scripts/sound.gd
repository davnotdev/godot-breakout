extends Node

class_name Sounds

@onready var brick_hit = $BrickHit
@onready var game_lost = $GameLost
@onready var game_won = $GameWon
@onready var level_passed = $LevelPassed
@onready var life_lost = $LifeLost
@onready var paddle_hit = $PaddleHit
@onready var wall_hit = $WallHit

func get_brick_hit():
	return brick_hit
	
func get_game_lost():
	return game_lost
	
func get_game_won():
	return game_won
	
func get_level_passed():
	return level_passed
	
func get_life_lost():
	return life_lost
	
func get_paddle_hit():
	return paddle_hit
	
func get_wall_hit():
	return wall_hit
