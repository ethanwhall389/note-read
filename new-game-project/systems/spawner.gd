extends Node2D

var current_level = GameManager.Levels[GameManager.current_level]
var notes_registry = NotesRegistry.notes

var level_notes = []
var emphasis_indexes = []

@onready var note_scene = preload("res://entities/note.tscn")

@export var spawn_point: Node2D

func _ready() -> void:
	get_notes_for_level()



func get_notes_for_level():
	
	#get note keys
	var keys = []
	
	for item in current_level:
		if item.has("note"):
			keys.append(item["note"])
		elif item.has("emphasis_indexes"):
			emphasis_indexes = item["emphasis_indexes"]
	
	#map the notes
	
	for key in keys:
		var current_key = key
		level_notes.append(notes_registry[key])
		
	
	print(level_notes)
	print(emphasis_indexes)
	


func _on_timer_timeout() -> void:
	#get random note
	var note_data = level_notes.pick_random()
	print("chosen note: ", note_data)
	
	#add note scene
	
	var spawn_x = spawn_point.global_position.x
	var spawn_y = spawn_point.global_position.y + (note_data["staff_position"] * GameManager.Staff_Line_Height)
	
	var note = note_scene.instantiate()
	add_child(note)
	note.global_position = Vector2(spawn_x, spawn_y)
	#note.setup(note_data)
