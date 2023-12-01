extends CanvasLayer

class_name UI

@onready var lifes_label = $MarginContainer/HBoxContainer/LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var game_won_container = $GameWonContainer

#shoot me

func set_lifes(lifes: int):
	lifes_label.text = "Lives: %d" % lifes


func _on_game_over_button_pressed():
	get_tree().reload_current_scene()


func game_over():
	game_lost_container.show()

func on_level_won():
	if LevelDefinitions.current_level >= LevelDefinitions.levels.size():
		game_won_container.show()
		return
	
	level_won_container.show()


func _on_level_won_button_pressed():	
	LevelDefinitions.current_level += 1
	get_tree().reload_current_scene()
