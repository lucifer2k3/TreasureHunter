extends Node


var playerhealth = 10


func damaged(damage):
	playerhealth-=damage
	print(playerhealth)
	if (playerhealth<=0):
		print("dead")
