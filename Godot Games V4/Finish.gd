extends Interactable

signal finish_game

onready var pressed = false


func _ready():
	pass
	
# Text displayed when looking at switch
func get_interaction_text():
	return "Win Game"

# What it does when interacted with
func interact():
	emit_signal("finish_game")
