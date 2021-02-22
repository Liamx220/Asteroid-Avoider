extends KinematicBody2D

const gameoverCanvas = preload("res://gameover.tscn")

var speed = 200
var velo = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("player")


func get_input():
	velo = Vector2()
	if Input.is_action_pressed('ui_right'):
		velo.x += 1
	if Input.is_action_pressed('ui_left'):
		velo.x -= 1

	velo = velo.normalized() * speed




func _physics_process(delta):
	get_input()
	move_and_slide(velo)
	
	
func _on_EnemyDetector_area_entered(area):
	var gameover = gameoverCanvas.instance()
	get_node("gameovercontroller").add_child(gameover)
	visible = false

	

	
	
