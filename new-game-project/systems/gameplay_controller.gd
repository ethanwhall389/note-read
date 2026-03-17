extends Node2D

@export var spawner: Node2D
var spawned_notes = []
var current_note_index = 0


func _ready() -> void:
	spawner.note_spawned.connect(_on_note_spawned)
	

func _on_note_spawned(note: Node2D, note_data: Dictionary) -> void:
	spawned_notes.append({"name": note_data.name, "note": note})
	#print("spawned_notes: ", spawned_notes)
	
	highlight_current_note()
	
	#note.modulate = Color.RED



func _on_staff_body_exited(note: Node2D) -> void:
	print("note exited area")
	current_note_index += 1
	note.destroy_note()
	#body.queue_free()
	#print("current_note_index: ", current_note_index)
	
	#print("current note is now: ", spawned_notes[current_note_index].name)
	
	highlight_current_note()
	
	#make note fade off screen

func highlight_current_note() -> void:
	spawned_notes[current_note_index].note.modulate = Color("#000000")
