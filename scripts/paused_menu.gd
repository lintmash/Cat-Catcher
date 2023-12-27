extends CanvasLayer
#
var index = 0
var limit:int = GameManager.cats.size()
#var cat_sprite = [$Control/AnimatedSprite2D.play("cat_1"),$Control/AnimatedSprite2D.play("cat_2"),$Control/AnimatedSprite2D.play("cat_3")]

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_end"):
		print("works")
		$".".visible = false
		get_tree().paused = false
		##queue_free()


#func controller():
	

func  _ready():
	
	print(GameManager.cats[index])
	$Control/name.text = GameManager.cats[index]["name"]
	$Control/description.text = GameManager.cats[index]["description"]
	#$Control/cost.text =str( GameManager.cats[index]["cost"])
	$".".get_node("Control/cost").text = "Cost :" + str( GameManager.cats[index]["cost"])

	$Control/Sprite2D.texture = GameManager.cats[index]["anim"]
	#$Control/Sprite2D.texture =preload("res://assets/Entities/Pet Cats Pack/Cat-1/Cat-1-Idle.png")
	$Control/Sprite2D.texture == null
	#cat_sprite[index]
	
func _on_rent_pressed():
	#$Control/AnimatedSprite2D.play("cat_3")

	#print($Control/name.text = GameManager.cats[0]["name"])/
	
	pass # Replace with function body.


func _on_right_pressed():
	index+=1
	#if index > GameManager.cats.size():
	if index > limit-1:
		
		index= 2
	$Control/name.text = GameManager.cats[index]["name"]
	$Control/description.text = GameManager.cats[index]["description"]
	$".".get_node("Control/cost").text = "Cost :" + str( GameManager.cats[index]["cost"])
	$Control/Sprite2D.texture = GameManager.cats[index]["anim"]
	
	#$Control/Sprite2.texture = GameManager.cats[index]["anim"]
	
	#cat_sprite[index]
	
	



func _on_left_pressed():
	index -=1
	if index < 0:
		index= 0
	print(GameManager.cats[index])
	$Control/name.text = GameManager.cats[index]["name"]
	$Control/description.text = GameManager.cats[index]["description"]
	$".".get_node("Control/cost").text = "Cost :" + str( GameManager.cats[index]["cost"])
	$".".get_node("Control/cost").text = "Cost :" + str( GameManager.cats[index]["cost"])
	$Control/Sprite2D.texture = GameManager.cats[index]["anim"]
	
	
