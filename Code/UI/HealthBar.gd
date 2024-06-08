extends ProgressBar

var player
func _ready():
	player = get_node("/root/EgyptMap/mainchar")
	print(player)
	player.healthChanged.connect(update)
	update()

func update():
	value = player.currentHealth *100 / player.maxHealth 

