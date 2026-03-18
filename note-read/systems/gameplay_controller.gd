extends Node2D

@export var spawner: Node2D
@export var note_selection_ui: CanvasLayer
var spawned_notes = []
var current_note_index = 0


func _ready() -> void:
	spawner.note_spawned.connect(_on_note_spawned)
	note_selection_ui.note_button_selected.connect(_on_note_button_selected)
	

func _on_note_spawned(note: Node2D, note_data: Dictionary) -> void:
	spawned_notes.append({"name": note_data.name, "note": note})
	#print("spawned_notes: ", spawned_notes)
	
	highlight_current_note()
	
	#note.modulate = Color.RED

func _on_note_button_selected(note_name: String) -> void:
	print("Note button selected: ", note_name)
	check_guess(note_name)

func check_guess(note_name: String) -> void:
	# find current note
	var current_note = spawned_notes[current_note_index].name
	print("current_note: ", current_note)
	#compare

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
