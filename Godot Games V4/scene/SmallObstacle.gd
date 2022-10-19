extends "res://Interactable/Interactable.gd"


onready var pressed = false

func _ready():
	pass
	
# Text displayed when looking at switch
func get_interaction_text():
	return "Flip Switch" if pressed else "Flip Switch"

# What it does when interacted with
func interact():
		get_tree().change_scene("res://scene/HUD/Death.tscn")
