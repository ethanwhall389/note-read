extends CanvasLayer

# All buttons are in the group note_buttons

signal  note_button_selected(note_name: String)

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("note_buttons"):
		button.pressed.connect(_on_button_pressed.bind(button))

"""
func _on_button_pressed(button) -> void:
	
	note_button_selected.emit("G")
"""

func _on_button_pressed(button: Button) -> void:
	var label = button.get_parent().get_node("Label")
	note_button_selected.emit(label.text)
