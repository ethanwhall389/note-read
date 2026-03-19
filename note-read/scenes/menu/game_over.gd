extends Control

@onready var label_score: Label = $LabelScore

func _ready() -> void:
	label_score.text = str(GameManager.score)

func _on_button_main_menu_pressed() -> void:
	GameManager.go_to_main_menu()
