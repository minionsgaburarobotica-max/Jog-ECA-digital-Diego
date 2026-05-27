extends Node2D
var inciado = false
var cont = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$anim.play("Fade")
	$anim2.play("Titulo")
	$anim3.play("Jogar")
	$window.play()
	if Global.get_node("musica2").playing == false:
		Global.get_node("musica2").play()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if cont >= 2.5:
		$anim4.play("chacoalha")
		cont = 0
	else:
		cont += delta
		
	pass
#	pass


func _on_Button_button_down():
	$anim2.play("Fade")
	yield($anim2, "animation_finished")
	if Global.tutorial == false:
		Global.get_node("musica2").stop()
		get_tree().change_scene("res://Cenas/computador.tscn")
	else:
		get_tree().change_scene("res://Cenas/Tutorial.tscn")
	pass # Replace with function body.


func _on_botao_button_down():
	get_tree().quit()
	 # Replace with function body.


func _on_botao2_button_down():
	$anim2.play("Fade")
	yield($anim2, "animation_finished")
	get_tree().change_scene("res://Cenas/creditos.tscn")
