extends Node2D

@export var colorArray : Array[Texture] = []
@onready var car_sprite_2d = $CarSprite2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func changeColor():
	#Sortear um numero do array ->randi()%colorArray.size()
	car_sprite_2d.texture = colorArray[randi()%colorArray.size()]
