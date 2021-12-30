extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.area_name=="Pantalla1":
		get_node("Player").global_position=Vector2(498,514)
	if Global.area_name=="Pantalla3":
		get_node("Player").global_position=Vector2(509,185)
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
