extends ProgressBar

@onready var player = %mainchar
func _ready():
	print(player.maxHealth)
	player.healthChanged.connect(update)
	update()

func update():
	value = player.currentHealth *100 / player.maxHealth 

