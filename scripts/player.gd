extends CharacterBody2D

@export var moveSpeed:int = 100
@export var jumpHeight:int = - 1300
@export var health:int
@onready var playerState = $AnimatedSprite2D
@onready var collisionshape = $CollisionShape2D
var isAlive:bool =true
var gravity = 4300
var collected_coins =0



func _physics_process(delta):
	if not get_parent().isPlaying:
		playerState.play("idle")
	elif not is_on_floor():
			velocity.y += gravity * delta
	elif Input.is_action_just_pressed("ui_up"):
			playerState.play("jump")
			velocity.y = jumpHeight
	else:
		playerState.play("run")
	
		

		
	move_and_slide()






