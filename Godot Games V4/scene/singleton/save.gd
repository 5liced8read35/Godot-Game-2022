extends Node

# This is the folder where all of the games changeable resources
# are stored, such as the save files.
#const DATA_FOLDER = "res://data"
#
#var dir = Directory.new()
#var data_path = OS.get_executable_path().get_base_dir().plus_file("data")
#dir.make_dir(path)
# TODO: fix all this, or something
const SAVEFILE = "save.txt"

# This dictionary is all of the data that will be saved and loaded from the save file.
var game_data = {}

func _ready():
	var dir = Directory.new()
	var data_path = OS.get_executable_path().get_base_dir().plus_file("data")
	dir.make_dir(data_path)
	print(data_path)
	
	# Load the game data into memory.
	load_data()

func load_data():
	var file = File.new()
	
	# If there is no save file, then we'll create one with these default settings.
	if not file.file_exists(SAVEFILE):
		game_data = {
			"fullscreen_on": false,
			"vsync_on": false,
			"display_fps": false,
			"max_fps": 0,
			"bloom_on": false,
			"brightness": 1,
			"master_vol": -10,
			"music_vol": -10,
			"sfx_vol": -10,
			"fov": 90,
			"mouse_sens": .1,
		}
		save_data()
	file.open(SAVEFILE, File.READ)
	game_data = file.get_var()
	file.close()
	
func save_data():
	var file = File.new()
	file.open(SAVEFILE, File.WRITE)
	file.store_var(game_data)
	file.close()
		
