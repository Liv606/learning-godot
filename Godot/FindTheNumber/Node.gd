extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var numero
var chute
var vida

func _ready():
	get_node("Chute").set_disabled(true)
	get_node("ChuteText").set_editable(false)
	pass

func _process(delta):
	if (vida == null):
		$Vidas.text = "Vidas"
	else : 
		get_node ("Vidas").text = str(vida)
		pass



func _on_Chute_button_down():
	if vida > 0 :
		chute = get_node("ChuteText").text
		if numero == int(chute):
			get_node("Saída").text = "Você acertou!"
			
			get_node("Chute").set_disabled(true)
			get_node("ChuteText").set_editable(false)
			get_node("Start").set_disabled(false)
			get_node("ChuteText").text = ""
			
		elif numero > int(chute):
			get_node("Saída").text = "O número é maior!"
			vida = vida -1
			pass
		else :
			get_node("Saída").text = "O número é menor!"
			vida = vida -1
			pass
	else: 
		get_node("Saída").text = "Você não tem mais vidas"
		
		get_node("Chute").set_disabled(true)
		get_node("ChuteText").set_editable(false)
		get_node("Start").set_disabled(false)
		get_node("ChuteText").text = ""
		
		pass
	pass # Replace with function body.


func _on_Start_button_down():
	
	get_node("Chute").set_disabled(false)
	get_node("ChuteText").set_editable(true)
	get_node("Start").set_disabled(true)
	
	vida = 5
	#get_node("Saída").text = "Chute um número entre 1 e 30"
	randomize()
	numero = randi()%30+1
	get_node("Saída").text = "Chute um número!"
	pass 
	pass # Replace with function body.
