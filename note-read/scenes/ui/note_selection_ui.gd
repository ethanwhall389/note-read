extends CanvasLayer

signal  note_selected(note_name: String)

func _on_button_g_pressed() -> void:
	note_selected.emit("G")
