/// @description 

if(not looted){
	show_debug_message("here loot")
	image_index++
	looted = true
	outline = false
	seqDir = 1
	
	var loot = instance_create_depth(x, y, depth, obj_loot)
	
	//drop on a free space
	var dropDist = 25
	if(tilemap_get_at_pixel(groundTiles, x, y + dropDist) == 0){
		dropSeq = dropSeqRight
		if(tilemap_get_at_pixel(groundTiles, x + dropDist, y) == 0){
			dropSeq = dropSeqRight
			seqDir = -1
		}
	} else {
		dropSeq = dropSeqDown
	}
	
	
	//play seq
	seq = layer_sequence_create("Instances", x, y, dropSeq)
	layer_sequence_xscale(seq, image_xscale * seqDir)
	layer_sequence_yscale(seq, image_yscale)
	
	var seqInst = layer_sequence_get_instance(seq)
	sequence_instance_override_object(seqInst, obj_chest, id)
	sequence_instance_override_object(seqInst, obj_loot, loot)
	alarm_set(0, 15)
}






