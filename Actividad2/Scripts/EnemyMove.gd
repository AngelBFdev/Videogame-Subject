extends KinematicBody2D

var motion=Vector2()
var state = 0
var speed=100
var rng = RandomNumberGenerator.new()
var der=false
var izq=false
var arr=false
var aba=false

func _physics_process(delta):
	if (state==0 && der==false):
		motion.x= 1
		motion.y=0
		der=true
		izq=false
	elif (state==1 && izq==false):
		motion.x= -1
		motion.y=0
		izq=true
		der=false
	elif (state==2 && aba==false):
		motion.y=1
		motion.x=0
		aba=true
		arr=false
	elif (state==3 && arr==false):
		motion.y=-1
		motion.x=0
		aba=false
		arr=true
	
	motion =motion.normalized()*speed
	if(motion!=Vector2(0,0)):
		get_node("Sprite/AnimationPlayer").play("Walk")
	else:
		get_node("Sprite/AnimationPlayer").play("Idle")
	move_and_slide(motion,Vector2(0,-1))

func _on_Timer_timeout():
	rng.randomize()
	
	state=floor(rng.randi_range(0,3)) 
	motion=Vector2()
	pass


func _on_Area2D_body_entered(body):
	body.die()

func die():
	pass
