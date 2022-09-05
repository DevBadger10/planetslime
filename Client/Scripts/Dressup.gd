extends Node2D

func _ready():
	$Slime.play("sand")
	$Accessory.texture = load("res://Images/Slimes/Accessories/Coffee.png")

func _on_Black_pressed():
	$Slime.play("black")

func _on_Blue_pressed():
	$Slime.play("blue")

func _on_Brown_pressed():
	$Slime.play("brown")

func _on_Green_pressed():
	$Slime.play("green")

func _on_Grey_pressed():
	$Slime.play("grey")

func _on_Kirby_pressed():
	$Slime.play("kirby")

func _on_Lilac_pressed():
	$Slime.play("lilac")

func _on_Lime_pressed():
	$Slime.play("lime")

func _on_Orange_pressed():
	$Slime.play("orange")

func _on_Purple_pressed():
	$Slime.play("purple")

func _on_Red_pressed():
	$Slime.play("red")

func _on_Sand_pressed():
	$Slime.play("sand")

func _on_White_pressed():
	$Slime.play("white")

func _on_Yellow_pressed():
	$Slime.play("yellow")

func _on_Cake_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Cake.png")

func _on_Carrot_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Carrot.png")

func _on_Coal_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Coal.png")

func _on_Coffee_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Coffee.png")

func _on_CottonBall_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/CottonBall.png")

func _on_Glue_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Glue.png")

func _on_Hat_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Hat.png")

func _on_Money_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Money.png")

func _on_Nothing_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Nothing.png")

func _on_Paperclip_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Paperclip.png")

func _on_Potato_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Potato.png")

func _on_Soup_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Soup.png")

func _on_Starsticker_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/StarSticker.png")

func _on_Weight_pressed():
	$Accessory.texture = load("res://Images/Slimes/Accessories/Weight.png")


func _on_Slime_frame_changed():
	if $Slime.frame == 0:
		$Accessory.position.y = $Slime.position.y - 137 # -, not +! With + they eat/drink their accessory.
	elif $Slime.frame == 1:
		$Accessory.position.y = $Slime.position.y - 183
