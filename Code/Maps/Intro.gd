extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Faded in")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Faded out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Code/Maps/welcome.tscn")




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
