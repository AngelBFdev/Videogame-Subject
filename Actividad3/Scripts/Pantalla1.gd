extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	if Global.area_name=="Pantalla2":
		get_node("Player").global_position=Vector2(509,52)
	pass # Replace with function body.

