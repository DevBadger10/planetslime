extends Node2D

var hosting = false
#var Log = ""
#var log_file = File.new()

func _ready():
	pass # Replace with function body.

func _on_StartHosting_pressed():
	if hosting == false:
		$LimitPlayers.disabled = true
		$Log.disabled = true
		$Seed.editable = false
		$StartHosting.disabled = true
		$StopHosting.disabled = false
		hosting = true
		starthosting()

func starthosting():
	#Log_String("Started hosting")
	#print(IP.get_local_addresses())
	var peer = NetworkedMultiplayerENet.new()
	if $LimitPlayers.pressed == true:
		peer.create_server(5113, 14) #14 colours.
	if $LimitPlayers.pressed == false:
		peer.create_server(5113, 100) # 5113 = SLIE as no character is identical to M in numbers. 
	get_tree().network_peer = peer
	$ConnectionID.text = "SlimeID: " + encodeIP()
	#print(encodeIP())

func stophosting():
	#Log_String("Ended hosting")
	get_tree().network_peer = null
	$ConnectionID.text = "SlimeID: Terminated"
#	if $Log.pressed:
#		log_file.open("user://Log " + str(rand_range(0,9999)), File.WRITE)
#		log_file.store_string(Log)
#		log_file.close()

func _on_StopHosting_pressed():
	if hosting == true:
		$LimitPlayers.disabled = false
		$Log.disabled = false
		$Seed.editable = true
		$StartHosting.disabled = false
		$StopHosting.disabled = true
		stophosting()
		hosting = false

func encodeIP():
	for i in IP.get_local_addresses().size():
		if IP.get_local_addresses()[i].left(2) == "10":
			return IP.get_local_addresses()[i]

#func Log_String(string):
#	Log = Log + str(string + "\n")
#	print(Log)
