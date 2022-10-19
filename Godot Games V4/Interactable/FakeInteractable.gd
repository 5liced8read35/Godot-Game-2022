extends Interactable

onready var animation_player = $AnimationPlayer

# Send a signal to the NewFPS that the death switch was pressed
signal die

onready var pressed = false

func _ready():
	pass
	
# Text displayed when looking at switch
func get_interaction_text():
	return "Flip Switch" if pressed else "Flip Switch"

# What it does when interacted with
func interact():
	animation_player.play("SwitchOn")
	emit_signal("die")
	print("Player Won Game")
