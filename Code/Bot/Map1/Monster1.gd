extends Area2D
@onready var main = %mainchar



var speed = 100
var direction = Vector2(-1, 0)
var center_position = Vector2()  
var left_limit = 0 
var right_limit = 0  

#stat
var maxHealth = 100
var maxDmg = 50

func _ready():
	center_position = position
	left_limit = center_position.x - 100
	right_limit = center_position.x + 100
	position.x = clamp(position.x, left_limit, right_limit)
func _physics_process(delta):
	var velocity = direction * speed * delta
	position += velocity
	if position.x >= right_limit:
		direction.x = -1  
	elif position.x <= left_limit:
		direction.x = 1 
func _on_body_entered(body):
	if(body.name=="mainchar"):
		main.damaged(maxDmg)
