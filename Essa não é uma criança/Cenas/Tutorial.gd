extends Node2D
var tutorial = ["Ola Jogador", "Esse é o tutorial do jogo", "Para jogar esse jogo incrivel, você deve investigar o perfil das crianças", "isso é, coisas como o horario mais jogado, os jogos que ela joga, etc", "após ver todas as informações você dara seu veredito escolhendo se ela de fato é uma criança", "você trabalha como Moderador do nosso jogo Foblox, Seu trabalho é não deixar que nenhuma criança seja rejeitada, e que nenhum alien entre", ""]
var texto = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func pergunta():
	$Label.text = "Você entendeu tudo?"
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
		yield(get_tree().create_timer(5), "timeout")
		$anim.play("apagar")
		yield($anim, "animation_finished")
		
		if opa == null:
			texto += 1
			proximo(tutorial[texto], null)
			
		else:
			Global.get_node("musica2").stop()
			Global.tutorial = false
			get_tree().change_scene("res://Cenas/computador.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("fade")
	yield($anim, "animation_finished")
	proximo(tutorial[texto], null)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_botao_button_down():
	proximo("NÂO IMPORTA!!!", true)


func _on_botaoX_button_down():
	proximo("Otimo", true)


func _on_botaoPulae_button_down():
	Global.get_node("musica2").stop()
	Global.tutorial = false
	get_tree().change_scene("res://Cenas/computador.tscn")
