extends Control

var heart_size:int=16

func on_player_life_changed(player_hearts:int)->void:
	 $Heart.rect_size.x=player_hearts*heart_size

func player_max_life(player_hearts:int):
	$Empty.rect_size.x=player_hearts*heart_size

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
