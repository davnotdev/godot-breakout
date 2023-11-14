extends CanvasLayer

class_name UI

@onready var lifes_label = $MarginContainer/HBoxContainer/LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer

#shoot me

func set_lifes(lifes: int):
	lifes_label.text = "Lives: %d" % lifes


func _on_game_over_button_pressed():
	get_tree().reload_current_scene()


func game_over():
	game_lost_container.show()

func on_level_won():
	level_won_container.show()


func _on_level_won_button_pressed():
	LevelDefinitions.current_level = 2
	get_tree().reload_current_scene()
