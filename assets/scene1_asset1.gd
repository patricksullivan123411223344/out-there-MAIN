extends TileMapLayer

@export var asset_base_path := "res://assets/scenes/"

func spawn_asset(asset_name: String, tile: Vector2i) -> void:
	var scene_path := asset_base_path + asset_name + ".tscn"
	
	if not ResourceLoader.exists(scene_path):
		push_error("Scene not found:" + scene_path)
		return
	
	var packed := load(scene_path) as PackedScene
	if packed == null:
		push_error("Failed to load PackedScene:" + scene_path)
		return
	
	var inst := packed.instantiate() as Node2D
	if inst == null:
		push_error("Scene is not Node2D:" + scene_path)
		return
	
	get_parent().add_child(inst) 
	
	inst.global_position = to_global(map_to_local(tile))
	
	
