/// @description 

if(not looted){
	show_debug_message("here loot")
	image_index++
	looted = true
	outline = false
	
	var loot = instance_create_depth(x, y, depth, obj_loot)
	
	//play seq
	seq = layer_sequence_create("Instances", x, y, dropSeq)
	var seqInst = layer_sequence_get_instance(seq)
	sequence_instance_override_object(seqInst, obj_chest, id)
	sequence_instance_override_object(seqInst, obj_loot, loot)
	alarm_set(0, 15)
}






