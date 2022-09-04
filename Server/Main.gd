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
	pass

func stophosting():
	pass

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
	if IP.get_local_addresses().size() == 0:
		return "Error: IP Not Found"
	elif IP.get_local_addresses().size() == 1:
		if not IP.get_local_addresses()[0] == "127.0.0.1":
			return str(IP.get_local_addresses()[0])
		else:
			return "Error: IP Invalid"
	else:
		for i in IP.get_local_addresses().size():
			if not IP.get_local_addresses()[i] == "127.0.0.1":
				return IP.get_local_addresses()[i]
