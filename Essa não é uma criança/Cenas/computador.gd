extends Node2D
var nome1 = get_node("tela/chat/nome")
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

var mensagemTiposV = ["oii posso entrar no seu servidor", "oiiiiiii posso jogar tabem", "ola. eu queria entrar. por favor", "opa eu queria entrar eu posso", "oi eu posso entrar por favor", "oii eu quero jogar tbm", "deixa eu entrar porfavor"]
var mensagemTiposF = ["oi, eu gostaria de entrar no seu servidor", "ola, sou uma criança. posso jogar em seu servidor", "oi, eu posso jogar no servidor?", "zip zip zip zeeep zop zip.", "ola zip, posso entrar no seu jogo?", "iudfhiuhisfhiihihfisfhd", "oi. eu com certeza sou um alienigena disfarçado que quer abduzir crianças dentro do jogo, posso jogar tio."]

var idadeTipos = int(rand_range(5, 13))

var generoTipos = ["masculito", "femenito"]

var emailTiposF = ["@hotmail", "@outlook", "@yahoo"]

var jogoTiposV = ["roblox", "minecraft", "subway surfers", "uma musume", "fazedinha feliz", "roube um 67", "super mombo quest", "grand chase", "gacha life", "toca boca"]
var jogoTiposF = ["tibia", "CS1", "team fortress 2", "facebook", "instagram", "não jogo", "LoL", "Godot", "elden ring", "baldurs gate"]

var horarioTiposV = int(rand_range(9, 17))
var horarioTiposF = int(rand_range(21, 24))

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
