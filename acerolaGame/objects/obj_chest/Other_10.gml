/// @description 

if(not looted){
	show_debug_message("here loot")
	image_index++
	looted = true
	outline = false
	
	//play seq
	var seq = layer_sequence_create("Instances", x, y, dropSeq)
	var seqInst = layer_sequence_get_instance(seq)
	sequence_instance_override_object(seqInst, obj_chest, id)
	
}






