extends Node



signal coins_gained(int)
var player_coins:int
var cats= {
	0: {
		"name":"Air",
		"anim":preload("res://assets/Entities/Pet Cats Pack/Cat-1/Cat-1-Idle.png"),
		"description":"Gain a extra Live",
		"cost": 100
	},
	1: {
		"name":"Luna",
		"anim":preload("res://assets/Entities/Pet Cats Pack/Cat-2/Cat-2-Idle.png"),
		"description":"Increases difficulty",
		"cost": 300
	},
	2: {
		"name":"Simba",
		"anim":preload("res://assets/Entities/Pet Cats Pack/Cat-3/Cat-3-Idle.png"),
		"description":"Doubles the amount of coins you gain",
		"cost": 500
		
	}
}
func coins_collected(value):
	player_coins+=value
	emit_signal("coins_collected",value)
	print(player_coins)
