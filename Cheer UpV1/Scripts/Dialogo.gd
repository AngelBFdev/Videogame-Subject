extends Node

var dialog=["soy una prueba"]
var page=0

# Called when the node enters the scene tree for the first time.
func _ready():
	dialog=Global.dialogo
	get_node(".").bbcode_text=dialog[page]
	get_node(".").percent_visible=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Interact"):
		if get_node(".").percent_visible>=1:
			if(page<dialog.size()-1):
				page+=1
				get_node(".").bbcode_text=dialog[page]
				get_node(".").percent_visible=0
			else:
				get_parent().queue_free()
				get_tree().paused=false
		else:
			get_node(".").percent_visible=1
		
	pass


func _on_Timer_timeout():
	get_node(".").percent_visible=get_node(".").percent_visible+.05
	pass # Replace with function body.
