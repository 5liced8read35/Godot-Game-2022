extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# quit the game
func _on_Quit_pressed():
	get_tree().quit()

func _on_Restart_pressed():
	get_tree().change_scene("res://scene/world.tscn")
