extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("fade")
	yield($anim, "animation_finished")
	$anim.play("Creditos")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_botao_button_down():
	$anim.stop()
	$anim.play("fade sumir")
	yield($anim, "animation_finished")
	get_tree().change_scene("res://Cenas/Menu.tscn")
