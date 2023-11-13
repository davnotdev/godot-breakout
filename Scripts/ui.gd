extends CanvasLayer

class_name UI

@onready var lifes_label = $MarginContainer/HBoxContainer/LifesLabel
@onready var game_lost_container = $GameLostContainer
#shoot me

func set_lifes(lifes: int):
	lifes_label.text = "Lives: %d" % lifes


func _on_game_over_button_pressed():
	get_tree().reload_current_scene()


func game_over():
	game_lost_container.show()
	pass


func _on_level_won_button_pressed():
	LevelDefinitions.current_level += 1
	get_tree().reload_current_scene()
