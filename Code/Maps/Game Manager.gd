extends Node
var label
var points = 0
func add_point():
	points +=1
	print(points)
	label.text = str(points)



func _ready():
	var node = preload("res://Assets/UI/canvas_layer.tscn")
	var ui_node = node.instantiate()
	label = ui_node.get_child(1)
	add_child(ui_node) #here the _ready() is called

