extends GPUParticles2D

class_name CrumbleEffect

func _ready():
	emitting = false


func crumble():
	emitting = true
	await get_tree().create_timer(0.25).timeout
	emitting = false
