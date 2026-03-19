extends Control



func _on_button_levels_pressed() -> void:
	GameManager.go_to_level_select()



func _on_button_options_pressed() -> void:
	GameManager.go_to_options()
