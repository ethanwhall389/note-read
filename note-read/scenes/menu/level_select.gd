extends Control


func _on_button_level_1_pressed() -> void:
	GameManager.start_game(1)


func _on_button_level_2_pressed() -> void:
	GameManager.start_game(2)


func _on_button_level_3_pressed() -> void:
	GameManager.start_game(3)
