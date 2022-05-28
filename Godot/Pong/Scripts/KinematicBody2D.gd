extends KinematicBody2D

var vel = 200
var dir = Vector2(1,0)

func _ready():
	
	pass 

func _process(delta):
	global_position = global_position + (vel*dir*delta)
	
	pass


func _on_Area2D_body_entered(body):
	dir = dir*-1
	pass 
