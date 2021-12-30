extends Node
var mensaje=["¿A donde crees que vas?", "¿Vas a enfrentarte al mago?", "No seas incredulo, si un veterano como yo no pudo, menos podrá un novato como tu", "Retirate", "...", "Gente común como nosotros no tiene oportunidad"]
var repetido=false
var DialogNode=load("res://Escenas/Dialogo.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		if !Global.repetido:
			Global.dialogo=mensaje

			var d=DialogNode.instance()
			get_parent().add_child(d)

			get_tree().paused=true
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	repetido=true
	Global.repetido=repetido
	pass # Replace with function body.
