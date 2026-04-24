extends Node2D
var nome1
var nome2 
var mensagem
var idade
var genero
var email
var jogo
var horario

######

var nomeTiposF = ["daniel", "marcos", "angelo", "enzo", "bill", "alexandre", "miguel", "danielo"]
var nomeTiposM = ["shakira", "fernanda", "marlene", "nita", "daniele", "maria", "mariana", "izabella"]
var nomeT = [nomeTiposF, nomeTiposM]
var mensagemTiposF = ["oi, eu gostaria de entrar no seu servidor", "ola, sou uma criança. posso jogar em seu servidor", "oi, eu posso jogar no servidor?", "zip zip zip zeeep zop zip.", "ola zip, posso entrar no seu jogo?", "iudfhiuhisfhiihihfisfhd", "oi. eu com certeza sou um alienigena disfarçado que quer abduzir crianças dentro do jogo, posso jogar tio."]
var mensagemTiposV

var idadeTipos

var generoTipos = ["masculito", "femenito"]

var emailTiposF = ["@hotmail", "@outlook", "@yahoo"]
var emailTiposV 

var jogoTiposF = ["tibia", "CS1", "team fortress 2", "facebook", "instagram", "não jogo", "LoL", "mario", "elden ring", "baldurs gate"]
var jogoTiposV

var horarioTiposV
var horarioTiposF

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var infos

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	nome1 = $tela/chat/nome
	nome2 = $tela/perfil/nome
	mensagem = $tela/chat/mensagem/dialogo
	idade = $tela/perfil/idade
	genero = $tela/perfil/genero
	email = $tela/dados/email
	jogo = $tela/dados/jogo
	horario = $tela/dados/Horario
	var endereco
	
	idadeTipos = int(rand_range(5, 13))
	horarioTiposF = int(rand_range(21, 24))
	horarioTiposV = [horarioTiposF, int(rand_range(9, 17))]
	
	jogoTiposV = [jogoTiposF, jogo, "roblox", "minecraft", "subway surfers", "uma musume", "fazedinha feliz", "roube um 67", "super mombo quest", "grand chase", "gacha life", "toca boca"]
	emailTiposV = [emailTiposF, email, "@gmail"]
	mensagemTiposV = [mensagemTiposF, mensagem, "oii posso entrar no seu servidor", "oiiiiiii posso jogar tabem", "ola. eu queria entrar. por favor", "opa eu queria entrar eu posso", "oi eu posso entrar por favor", "oii eu quero jogar tbm", "deixa eu entrar porfavor"]

	infos = [horarioTiposV, mensagemTiposV, emailTiposV, jogoTiposV]
	
	
	
	var crianca = false#[true, false].pick_random()
	
	mensagem.text = mensagemTiposV[int(rand_range(2, 9))]
	jogo.text = jogoTiposV[int(rand_range(2, 11))]
	horario.text = str(horarioTiposV[1])
	email.text = emailTiposV[2]
	
	if crianca == false:
		var info = infos.pick_random()
		if not info == horarioTiposV:
			info[1].text = info[0].pick_random()
		else:
			horario.text = str(info[0])
		
	horario.text = horario.text + ":00"
	idade.text = str(idadeTipos)
	var nome = nomeT.pick_random().pick_random()
	nome1.text = str(nome)
	nome2.text = str(nome)
	
	email.text = str(nome) + str(int(rand_range(23, 67))) + email.text
	genero.text = generoTipos.pick_random()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	pass
