extends ViewportContainer

signal item_selected

export var item_name = ""

func _ready():
	pass


func _on_UpgradeItem_gui_input(event):	
	if event is InputEventMouseButton:
		if event.pressed:
			print("button")
			emit_signal("item_selected", item_name)
