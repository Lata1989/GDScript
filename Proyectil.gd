class_name Proyectil
extends Sprite2D

# Los atributos son variables o constantes
var velocidad : int = 20
var daño : int = 10
var tipo = "fuego"

func mover(delta: float):
	position.x += velocidad * delta

func explotar():
	#pass
	if(int(position.x)%200==0):
		print("Exploto")
		queue_free()
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#pass
	mover(delta)
	explotar()
		#velocidad = 0
