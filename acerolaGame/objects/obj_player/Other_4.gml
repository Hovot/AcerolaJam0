/// @description 

//update for new room
ceilingTiles = layer_tilemap_get_id("Blackness")
wallTiles = layer_tilemap_get_id("Walls")

collisionList = [ceilingTiles, wallTiles, obj_npc, obj_chest, obj_table]

//because of event order, push all doors onto new collisionList
with(obj_door){
	array_push(other.collisionList, id)
}

