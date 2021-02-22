extends KinematicBody2D


var speed = 200
var velocity = Vector2()
func _ready():
	add_to_group("enemy")

func move_Down():
	velocity.y += 1
	velocity = velocity.normalized() * speed
	pass 


func _physics_process(delta):
	move_Down()
	move_and_slide(velocity)
	

