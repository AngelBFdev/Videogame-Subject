extends KinematicBody2D

signal life_update(player_hearts)
signal max_life(player_hearts)

var speed=200
var move_direction=Vector2(0,0)
var damage=false
var max_heart:int =3
var hearts:int = max_heart


func _physics_process(delta):
	MovementLoop()
	if Input.is_action_pressed("ui_select"):
		die()
	
	
func _ready():
	connect("life_update",get_parent().get_node("UI/Vida"), "on_player_life_changed")
	emit_signal("life_update",max_heart)
	connect("max_life",get_parent().get_node("UI/Vida"), "player_max_life")
	emit_signal("max_life",max_heart)
	
func _process(delta):
	pass
	
func die():
	if($Timer.is_stopped()):
		$Timer.start()
		hearts=hearts-1
		emit_signal("life_update",hearts)
		#if(hearts==0)
			
		get_node("Sprite/AnimationPlayer").play("Daño")
		damage=true

func MovementLoop():
	move_direction.x=int(Input.is_action_pressed("derecha"))-int(Input.is_action_pressed("izquierda"))
	if(Input.is_action_pressed("izquierda")):
		get_node("Sprite").flip_h=true
	if(Input.is_action_pressed("derecha")):
		get_node("Sprite").flip_h=false
	move_direction.y=(int(Input.is_action_pressed("abajo"))-int(Input.is_action_pressed("arriba")))/float(2)
	
	var motion =move_direction.normalized()*speed
	move_and_slide(motion)
	if !damage:
		if move_direction!=Vector2(0,0):
			get_node("Sprite/AnimationPlayer").play("Walk")
		else:
			get_node("Sprite/AnimationPlayer").play("Idle")


func _on_Timer_timeout():
	damage=false
