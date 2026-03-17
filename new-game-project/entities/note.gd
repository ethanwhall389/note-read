extends CharacterBody2D

# func setup(note :Dictionary) -> void:

const SPEED = 90.0

func _physics_process(delta: float) -> void:
	velocity.x = -SPEED
	move_and_slide()

func setup(note_data: Dictionary) -> void:
	print(note_data)
	var ledger_through = note_data.ledger_through
	var ledgers_above = note_data.ledgers_above
	var ledgers = note_data.ledgers
	var stem_up = note_data.stem_up
	
	var main_ledger_offset_y = 0.0
	
	var ledger_direction = 1
	
	var ledger_set
	
	# find out if ledger_through is true. If so, set ledger_set to be the LinesCrossThrough, or vice versa
	if ledger_through == true:
		ledger_set = $LinesCrossThrough
	else:
		ledger_set = $LinesOffset
	
	# find out how many ledger lines there are
		# loop through the ledger_set children as many times as ledger lines are in the node and turn on visibility 
	for i in range(ledgers):
		var child = ledger_set.get_child(i)
		child.visible = true
	
	# find out if ledgers are above or below
		# if above, flip the ledger_set by scaling y axis * -1
	if ledgers_above == true:
		ledger_set.scale = Vector2(1.0, -1.0)
		
	# find out if stem is down
		# if so, move it accordingly
	if stem_up == true:
		$Stem.position = Vector2(12.0, -28.0)
	else:
		$Stem.position = Vector2(-12.0, 30.0)

	$Label.text = note_data.name
	
	"""
	for child in $LinesCrossThrough.get_children():
		print(child.visibility)
	
	# flip which direction the ledgers go
	if ledgers_above > 0:
		ledger_direction = -1
	
	
	if ledger_through == true:
		ledgers[0].visible = true
	else:
		main_ledger_offset_y = GameManager.Staff_Line_Height
	"""
	
func destroy_note() -> void:
	#fade out
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.5) #0.5 = duration in seconds
	#tween_callback fires after the tween finishes
	tween.tween_callback(queue_free)
