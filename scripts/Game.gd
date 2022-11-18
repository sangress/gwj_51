extends Spatial

onready var rockets = $CanvasLayer/Rockets
onready var bread = $Bread

var items_prefabs = {}
var items_positions = {}

func _ready():
	items_prefabs["rockets"] = load("prefabs/Rockets.tscn")
	items_positions["rockets"] = $Bread/rockets
	rockets.connect("item_selected", self, "_on_item_selected")

func _on_item_selected(item_name):
	print("item_name ", items_prefabs[item_name])
	var instance = items_prefabs[item_name].instance()
	instance.global_transform = items_positions[item_name].global_transform
	items_positions[item_name].add_child(instance)
