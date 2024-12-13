extends Node
# Video https://www.youtube.com/watch?v=fQf_ocKIHWM
# Tiempo 44:38
#Variables
var mochila : Dictionary = {hierbas = 15, madera = 1500, "vial vacio" = 25}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hola mundo!")
	var cazuela = "cebolla" #Variable
	print("Quiero comer " + cazuela + ".")
	cazuela = "patatas"
	print("Quiero comer " + cazuela + ".")
	#Tipos de datos - string - int - float - boolean
	var cadena : String = "Una cadena de caracteres"
	var un_entero : int = 8
	var un_decimal : float = 78.6
	var un_boolean : bool = true
	var un_nullable = null
	var posicion: Vector2 = Vector2.ZERO
	var lista: Array = []
	lista = [1, 2, 3]
	print("El elemento del array en la posicion 0 es: ", lista[0])
	print("El array tiene ", lista.size(), " elementos en su interior.")
	lista[2]=9
	print("El elemento del array en la posicion 3 es: ", lista[2])
	var diccionario: Dictionary = {"clave": "valor"}
	var coordenadas: Vector2 = Vector2(1.1,7.18)
	print("X: ", coordenadas.x, ", Y: ", coordenadas.y)
	print("El angulo de estas coordenadas es: ", coordenadas.angle())
	var coordenadas_entera: Vector2i = Vector2i(14,13)
	print("X: ", coordenadas_entera.x, ", Y: ", coordenadas_entera.y)
	var coordenadas3d: Vector3 = Vector3(10.5,13.5,14.5)
	print("X: ", coordenadas3d.x, ", Y: ", coordenadas3d.y, " Z: ", coordenadas3d.z)
	var coordenadas3d_entera: Vector3i = Vector3i(10,13,14)
	print("X: ", coordenadas3d_entera.x, ", Y: ", coordenadas3d_entera.y, " Z: ", coordenadas3d_entera.z)
	const VIDA_INICIAL : int = 10
	var condicion1 : bool = true
	var condicion2 : bool = false
	if condicion1 and condicion2:
		print("Es verdadero.")
	elif not condicion1 or condicion2:
		print("Es falsa")
	else:
		print("Algo")
		if condicion1:
			print("La condicion 1 es verdadera.")
		else:
			print("La condicion 1 es falsa.")
	# Bucles
	
	var turno: int = 0
	while (turno <= 500):
		print("Bucle while. El numero de turno es: ", turno)
		turno+=1
		if turno==20:
			break
	
	for i in range(1, turno+1):
			if (i==10):
				continue
			print("Bucle for. El numero de turno es: ", i)
	
	# Arrays y sus metodos
	var inventario : Array= []
	inventario = ["pocion"]
	print("El inventario posee: ", inventario)
	inventario.append("hierbas")
	print("El inventario posee: ", inventario)
	inventario.remove_at(1)
	print("El inventario posee: ", inventario)
	
	var loot: Array = ["pocion", "arma", "armadura"]
	inventario.append_array(loot)
	print("El inventario posee: ", inventario)
	inventario.insert(2, "lanza")
	print("El inventario posee: ", inventario)
	inventario.reverse()
	print("El inventario posee: ", inventario)
	inventario.sort()
	print("El inventario posee: ", inventario)
	inventario.shuffle()
	print("El inventario posee: ", inventario)
	inventario.clear()
	print("El inventario posee: ", inventario)
	loot.shuffle()
	inventario.append(loot[1])
	print("El inventario posee: ", inventario)
	inventario.clear()
	# Diccionarios
	#var mochila: Dictionary = {hierbas = 15, madera = 1500, "vial vacio" = 25}
	print(mochila)
	print(mochila["vial vacio"])
	print(mochila.hierbas)
	mochila.hechizos=["lumos", "avada kedavra"]
	print(mochila)
	mochila.erase("vial vacio")
	mochila.hierbas +=3
	print(mochila)
	for clave in mochila.keys():
		print(clave, ": " + str(mochila[clave]))
	# Textos o Strings
	var un_texto : String = "It's a me! Mario!!"
	print(un_texto)
	print(un_texto[1])
	un_texto += " Lo siento, la princesa esta en otro castillo"
	print(un_texto)
	var nombre : String = un_texto.get_slice(" ", 3)
	print(nombre)
	var palabras_array: Array = un_texto.split(" ")
	print(palabras_array)
	print(palabras_array)
	un_texto = un_texto.replace("princesa","señora")
	print(un_texto)
	game_over("Latita", 45)
	game_over("Latita")
	print(game_over_return("Latita",36))
	
	print(mochila)
	recoger("falopa", 10)
	print(mochila)
	var array2 : Array = [1]
	modificar(array2)
	print(array2)
	# Los tipos primitivos se pasan por valor y los complejos por referencia


	# Operadores aritmeticos
	# + Suma
	# - Resta
	# * Multiplicacion
	# / Division
	# ** Potencia
	# % Resto
	# = Asigna
	# += daño = daño + 2 == daño += 2 
	# Operadores de comparacion
	# == Es igual
	# != Distinto a
	# <= Menor o igual
	# >= Mayor o igual
	# < Menor a
	# > Mayor a
	# Operadores logicos
	# and
	# or
	#pass # Replace with function body.
	#Esto es un comentario
	"""
		Comentario
		multi
		linea
	"""

func game_over(nombre, puntos = 0):
	var mensaje : String = "Lo siento " + nombre + ", perdiste. Obtuviste " + str(puntos) + " puntos."
	print(mensaje)

func game_over_return(nombre, puntos = 0):
	var mensaje : String = "Lo siento " + nombre + ", perdiste. Obtuviste " + str(puntos) + " puntos."
	play_sonido_derrota()
	return mensaje

func play_sonido_derrota():
	pass

func recoger(material, cantidad = 1):
	if mochila.has(material):
		mochila[material] += cantidad
	else:
		mochila[material] = cantidad

func modificar(arr):
	arr.append(3)
#region
# podes colapsarlo
#endregion

# ATTENTION ALERT INFO TEST BUG WARNING

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
