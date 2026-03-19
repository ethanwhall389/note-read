extends CanvasLayer

@export var gameplay_controller: Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gameplay_controller.score_updated.connect(_on_score_updated)

func _on_score_updated(new_score):
	$Score/LabelScore.text = str(new_score)


func _on_button_end_pressed() -> void:
	print("end button pressed")
	GameManager.end_game()
