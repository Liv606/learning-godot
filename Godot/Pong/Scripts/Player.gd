extends Node2D

var dir = Vector2(0,1)
var vel = 150

func _ready():
	
	pass 

func _process(delta):
	
	if Input.is_action_pressed("baixo") :
		
		
		$Barra.global_position = $Barra.global_position + (vel*dir*delta)
		
		pass
	
	pass
