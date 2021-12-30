extends Area2D

const SPEED = 300
var velocity = Vector2()
var direction

func _ready():
	pass 

func set_direction(dir):
	direction = dir
	rotation = dir.angle()

func _process(delta):
	translate(SPEED * delta * direction)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		body.die()
	queue_free()
	pass # Replace with function body.
