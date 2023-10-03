extends Node2D
@export_category("Custom")
@export var greenCarSprite2D : Sprite2D


@export var sprite2DArray : Array[Sprite2D] = []
@export var node2DArray : Array[Node2D] = []


enum direcaoEnum {paraCima, paraBaixo, paraDireita, paraEsquerda}
@export_enum("paraCima", "paraBaixo", "paraDireita", "paraEsquerda") var usandoEnumDirecao: String

func _ready():
	get_node("../Car").modulate = Color.CHARTREUSE
	get_node("../BlueCar").colorChange()


func _process(delta):
	if Input.is_action_just_pressed("direita"):
		greenCarSprite2D.position.x += 5
		print("Direita")
		
	if Input.is_action_just_pressed("esquerda"):
		greenCarSprite2D.position.x -= 5
		print("Esquerda")
		
	if Input.is_action_just_pressed("1"):		
		print(node2DArray[0].changeColor()) 
		
	if Input.is_action_just_pressed("2"):		
		print("-> 2")
	
	
	
