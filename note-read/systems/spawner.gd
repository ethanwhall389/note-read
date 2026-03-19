extends Node2D

var current_level = GameManager.Levels[GameManager.current_level]
var notes_registry = NotesRegistry.notes

var level_notes = []
var emphasis_indexes = []

var difficulty_multiplier = GameManager.Difficulty_Levels[GameManager.current_difficulty]
var timer_wait_time: float = GameManager.default_spawn_speed / difficulty_multiplier

@onready var spawn_timer: Timer = $Timer

@onready var note_scene = preload("res://entities/note.tscn")

@export var spawn_point: Node2D

#signal note_spawned(note_data: Dictionary)
signal note_spawned(note: Node2D, note_data: Dictionary)

func _ready() -> void:
	get_notes_for_level()
	print("timer wait ", timer_wait_time)
	spawn_timer.set_wait_time(timer_wait_time)



func get_notes_for_level():
	
	#get note keys
	var keys = []
	
	for item in current_level:
		if item.has("note"):
			keys.append(item["note"])
		elif item.has("emphasis_indexes"):
			emphasis_indexes = item["emphasis_indexes"]
			
	print("emphasis_indexes: ", emphasis_indexes)
	
	#map the notes
	
	for key in keys:
		var current_key = key
		level_notes.append(notes_registry[key])
		
	


func _on_timer_timeout() -> void:
	

	#get random note
	var note_data = level_notes.pick_random()
	print("chosen note: ", note_data)
	

	"""
	### for testing all notes only
	var note_data
	note_data = level_notes[0]
	###
	"""

	#add note scene
	var spawn_x = spawn_point.global_position.x
	var spawn_y = spawn_point.global_position.y + (note_data["staff_position"] * GameManager.Staff_Line_Height)
	
		
	
	
	var note = note_scene.instantiate()
	add_child(note)
	note.global_position = Vector2(spawn_x, spawn_y)
	note.setup(note_data)
	
	note_spawned.emit(note, note_data)
	
	"""
	### for testing all notes only
	level_notes.pop_front()
	###
	"""
