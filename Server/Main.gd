extends Node2D

var hosting = false

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
	print(IP.get_local_addresses())
	var peer = NetworkedMultiplayerENet.new()
	if $LimitPlayers.pressed == true:
		peer.create_server(5113, 14) #14 colours.
	if $LimitPlayers.pressed == false:
		peer.create_server(5113, 100)
	get_tree().network_peer = peer
	$ConnectionID.text = "SlimeID: " + encodeIP()
	#print(encodeIP())

func stophosting():
	get_tree().network_peer = null
	$ConnectionID.text = "SlimeID: Terminated"

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
