extends Control


func _ready():
	pass # Replace with function body.


# When the start button is pressed change scene to world
func _on_Start_pressed():
	get_tree().change_scene("res://scene/world.tscn")

# quit the game
func _on_Quit_pressed():
	get_tree().quit()
