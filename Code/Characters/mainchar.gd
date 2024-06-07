extends CharacterBody2D

class_name mainchar
const SPEED = 200.0
const JUMP_VELOCITY = -400.0

signal healthChanged
@export var maxHealth: int =100
@onready var currentHealth: int = maxHealth



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animation = get_node("Container/AnimatedSprite2D")
@onready var container = get_node("Container")


func damaged(damage):
	currentHealth-=damage	
	print(currentHealth)
	if (currentHealth<=0):
		#currentHealth=maxHealth
		dead()
	healthChanged.emit()
		
		
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction == 1 or direction == -1:
		velocity.x = direction * SPEED
		container.scale.x = direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if not is_on_floor():
		animation.play("jump")
	elif direction == 1 or direction == -1:
		animation.play("run")
	else:
		animation.play("idle")
	move_and_slide()
func dead():
	print(currentHealth)
	print("dead")
	#khoa di chuyen
