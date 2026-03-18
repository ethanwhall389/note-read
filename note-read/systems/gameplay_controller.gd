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
	note.note_destroyed.connect(_on_note_destroyed)
	highlight_current_note()

func _on_note_button_selected(note_name: String) -> void:
	check_guess(note_name)

func check_guess(note_guess: String) -> void:
	# find current note
	var current_note = spawned_notes[current_note_index]
	
	if note_guess == current_note.name:
		current_note.note.modulate = Color("GREEN")
		#increase score?
	else:
		#penalize?
		current_note.note.modulate = Color("RED")
	
	current_note.note.destroy()

func _on_staff_body_exited(note: Node2D) -> void:
	note.destroy()


func _on_note_destroyed(note) -> void:
	current_note_index += 1
	highlight_current_note()

func highlight_current_note() -> void:
	spawned_notes[current_note_index].note.modulate = Color("#000000")
