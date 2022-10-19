extends Interactable
signal switch_on

onready var animation_player = $AnimationPlayer

export var light : NodePath
export var on_by_default = true
export var energy_when_on = 1
export var energy_when_off = 0

onready var light_node = get_node(light)
onready var on = on_by_default

var on_animation = false

func _ready():
	set_light_energy()
	
# Text displayed when looking at switch
func get_interaction_text():
	return "Flip Switch" if on else "Flip Switch"

# What it does when interacted with
func interact():
	if !on_animation:
		on_animation = true
		animation_player.play("SwitchOn")
		on = !on
		set_light_energy()
		emit_signal("switch_on")
	elif on_animation:
		animation_player.play("SwitchOff")
		on_animation = false

func set_light_energy():
	light_node.set_param(Light.PARAM_ENERGY, energy_when_on if on else energy_when_off)
