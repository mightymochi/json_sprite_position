tool
extends Node2D

export var arrange_items = false setget arrange_go
export(String, FILE, "*.json") var json_file
export var y_offset:float = get_viewport_rect().size.y
export var x_offset:float = 0

func _ready():
	pass 
	

func arrange_go(_arranged_stuff = null):
	if json_file != "":
		var data_file = File.new()
		if data_file.open(json_file, File.READ) != OK:
			return
		var data_text = data_file.get_as_text()
		data_file.close()
		var data_parse = JSON.parse(data_text)
		if data_parse.error != OK:
			return
		var data = data_parse.result
		var item_num = 0
		for item in data["skins"]["default"]:
			var node_name = item
			var dict_ref = data["skins"]["default"][item][item]
			node_name = node_name.capitalize()
			node_name = node_name.replace(" ","")
			print(node_name)
			if has_node(node_name):
				print(dict_ref)
				move_child(get_node(node_name), item_num)
				get_node(node_name).position = Vector2(dict_ref["x"] + x_offset, dict_ref["y"] * -1.0 + y_offset)
				item_num += 1
			
	else:
		print("no json file")
