extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("flash")
	$erro.play()
	
	if Global.sequenciaMAX < Global.sequencia:
		Global.sequenciaMAX = Global.sequencia
		$Recorde.visible = true
	else:
		$Recorde.visible = false
	$seque/sequencia.text = str(Global.sequencia)
	Global.sequencia = 0
	
	if Global.get_node("musica3").playing == false:
		Global.get_node("musica3").play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_botao_button_down():
	Global.get_node("musica3").stop()
	get_tree().change_scene("res://Cenas/Menu.tscn")
	


func _on_botaoX_button_down():
	Global.get_node("musica3").stop()
	get_tree().change_scene("res://Cenas/computador.tscn")
