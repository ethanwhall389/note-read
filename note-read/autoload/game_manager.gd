extends Node

var current_level = 1
var current_difficulty = "beginner"

var default_note_speed: float = 90.0
var default_spawn_speed: float = 2.0

const Staff_Line_Height = 12.0

var score = 0

const Levels = {
	1: [{"note": "C1"}, {"note": "G1"}, {"emphasis_indexes": [1]}],
	2: [{"note": "G1"}, {"note": "C2"}, {"note": "B1"}, {"emphasis": ["B1"]}],
	#level 3 for testing all notes
	3: [{"note": "C1"}, {"note": "D1"}, {"note": "E1"}, {"note": "F1"}, {"note": "G1"}, {"note": "A1"}, {"note": "B1"}, {"note": "C2"}, {"note": "D2"}, {"note": "E2"}, {"note": "F2"}, {"note": "G2"}, {"note": "A2"}, {"note": "B2"}, {"note": "C3"}, {"note": "D3"}, {"note": "E3"}, {"note": "F3"}, {"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
	4: [{"note": "C1"}, {"note": "D1"}, {"note": "E1"}, {"note": "C3"}, {"note": "D3"}, {"note": "E3"}, {"note": "F3"}, {"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
	5: [{"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
}

const Difficulty_Levels = {
	"beginner": 1.0,
	"intermediate": 1.5,
	"advanced": 2.2
}

func reset_score() -> void:
	score = 0

func start_game(level) -> void:
	current_level = level
	reset_score()
	get_tree().change_scene_to_file("res://scenes/gameplay/game.tscn")
	
func end_game() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/game_over.tscn")

func go_to_level_select() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/level_select.tscn")

func go_to_options() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/options.tscn")

func go_to_main_menu() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/main_menu.tscn")
