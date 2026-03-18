extends CharacterBody2D

var is_destroyed = false
const SPEED = 100.0

signal note_destroyed(note: Node2D)



func _physics_process(delta: float) -> void:
	velocity.x = -SPEED
	move_and_slide()

func setup(note_data: Dictionary) -> void:
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

func destroy() -> void:
	if is_destroyed:
		return
	is_destroyed = true
	note_destroyed.emit(self)
	#fade out
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.5) #0.5 = duration in seconds
	#tween_callback fires after the tween finishes
	tween.tween_callback(self.queue_free)
