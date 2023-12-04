extends Node3D

func _process(_delta):
	var num_coll = $ShapeCast3D.get_collision_count()
	print(num_coll)
	for c in range(num_coll):
		var obj = $ShapeCast3D.get_collider(c)
		var parent = obj.get_parent()
		print(parent.name)
		
	print(str($ShapeCast3D.collision_result.size()))
	for i in $ShapeCast3D.collision_result:
		print(str(i.collider_id))
