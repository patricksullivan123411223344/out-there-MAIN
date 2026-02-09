extends Node
class_name AtlasParser

func parse_subtextures(xml_path: String) -> Dictionary:
	var result := {}
	var parser := XMLParser.new()
	
	
