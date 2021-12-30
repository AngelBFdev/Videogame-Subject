extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D2_body_entered(body):
	
	pass # Replace with function body.


func _on_Pantalla3_body_entered(body):
	if body.is_in_group("Player"):
		Global.area_name=name
		get_tree().change_scene("res://Escenas/Pantallas/Pantalla3.tscn")
		#get_parent().
	pass # Replace with function body.
