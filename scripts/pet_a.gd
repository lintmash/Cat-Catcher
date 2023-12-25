extends CharacterBody2D


func _physics_process(delta):
		$AnimatedSprite2D.play("idle")
	
	#if not get_parent().isPlaying:
		#$AnimatedSprite2D.play("idle")
	#else:	
		#$AnimatedSprite2D.play("run")
