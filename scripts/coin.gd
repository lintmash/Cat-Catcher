extends Node2D

var coin =0



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_area_2d_body_entered(body):
	if body.name == "player":
		GameManager.coins_collected(1)
		queue_free()
	
	pass # Replace with function body.
