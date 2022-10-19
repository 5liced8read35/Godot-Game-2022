extends Spatial

onready var animation_player = $AnimationPlayer

var is_door_open = false

# When switch is interacted with, play the door animation
func _on_LightSwitch_switch_on():
	if !is_door_open:
		animation_player.play("Open")
		is_door_open = true
	else:
		pass
