extends Node2D
#var screen_size:Vector2i
var gamePaused = false
var player_pos = Vector2i(455,433)
var Camera_pos = Vector2i(576,327)
@onready var screen_size:Vector2i = get_window().size
var speed :float
const start_speed = 2.0
const max_speed = 30.0
const speed_limiter = 600000
var isPlaying:bool


# Called when the node enters the scene tree for the first time.
func _ready():
	#var screen_size = get_window().size
	new_game() 

func new_game():
	$HUD.get_node("playgame").show()	
	$player.position = player_pos
	$player.velocity = Vector2i(0,0)
	$Camera2D.position= Camera_pos
	$floor.position = Vector2i(0,0)
	$HUD.get_node("playgame").show()
	#coins_node.coin
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(coins_node.coin)
	
	if Input.is_action_just_pressed("ui_home"):
		pausegame()
	else:
		$HUD.get_node("HIGEST SCORE").visible = true
		$HUD.get_node("COINS COLLECTED").visible = true
		

	if isPlaying && !gamePaused:
		$HUD.get_node("playgame").hide()
		player_pos.x +=1000
		show_score()
		speed = start_speed+player_pos.x /speed_limiter
		#print(speed)
		$player.position.x += speed
		$Camera2D.position.x += speed
		if $Camera2D.position.x - $floor.position.x > screen_size.x *1.5:
			$floor.position.x += screen_size.x 
		
	else:
		if Input.is_action_pressed("ui_accept"):
			isPlaying = true
			new_game() 


func pausegame():
	$paused_menu.visible = true
	$HUD.get_node("HIGEST SCORE").visible = false
	$HUD.get_node("COINS COLLECTED").visible = false
	get_tree().paused =true



		
func show_score():
	$HUD.get_node("COINS COLLECTED").text = "SCORE: "+ str(GameManager.player_coins)
