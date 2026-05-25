extends Node2D
var tutorial = ["oioioi", "Esse é o tutorial do jogo", "Finja que eu expliquei alguma coisa", ""]
var texto = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func pergunta():
	$Label.text = "tu entendeu?"
	$anim.play("aparecer")
	yield($anim, "animation_finished")
	$recusar.visible = true
	$aceitar.visible = true
	
func proximo(text, opa):
	
	if text == "":
		pergunta()
	else:
		$Label.text = text
		$anim.play("aparecer")
		yield($anim, "animation_finished")
		yield(get_tree().create_timer(1.5), "timeout")
		$anim.play("apagar")
		yield($anim, "animation_finished")
		
		if opa == null:
			texto += 1
			proximo(tutorial[texto], null)
			
		else:
			Global.get_node("musica2").stop()
			get_tree().change_scene("res://Cenas/computador.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	proximo(tutorial[texto], null)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_botao_button_down():
	proximo("NÂO IMPORTA!!!", true)


func _on_botaoX_button_down():
	proximo("Otimo", true)
