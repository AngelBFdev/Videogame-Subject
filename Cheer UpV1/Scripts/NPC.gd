extends Node

var DialogNode=load("res://Escenas/Dialogo.tscn")
var hablar=false
var mensaje=["De nada sirve volver a intentarlo"]

signal dialogo(mensaje)
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(hablar):
		if(Input.is_action_pressed("Interact")):
			Global.dialogo=mensaje
			hablar=false
			var d=DialogNode.instance()
			get_parent().add_child(d)

			get_tree().paused=true
		
	
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		hablar=true
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if body.is_in_group("Player"):
		hablar=false
	pass # Replace with function body.
