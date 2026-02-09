extends Node

func get_scene_world():
	var scene_options = []
	var parser = XMLParser.new()
	var error = parser.open("/buildingTiles_sheet.xml")
	if error != OK:
		print("Error opening XML file", error)
		return scene_options
	
	while parser.read() == OK:
		if (
			parser.get_node_type() == XMLParser.NODE_ELEMENT
			and parser.get_node_name() == "constant"
		):
			var cname = parser.get_named_attribute_value("name")
			scene_options.append(cname)
			
			
		
			
			
		
		
	
	
