extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Code/Maps/loading_screen.tscn")
