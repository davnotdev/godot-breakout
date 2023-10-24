extends CanvasLayer

class_name UI

@onready var lifes_label = $MarginContainer/HBoxContainer/LifesLabel
#shoot me

func set_lifes(lifes: int):
	lifes_label.text = "Lives: %d" % lifes


func _on_game_over_button_pressed():
	get_tree().reload_current_scene()
