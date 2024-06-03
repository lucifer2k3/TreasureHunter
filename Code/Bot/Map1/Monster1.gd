extends Area2D
@onready var main = %mainchar

func _on_body_entered(body):
	if(body.name=="mainchar"):
		main.damaged(3)
func donothing():
	print("ranh")
