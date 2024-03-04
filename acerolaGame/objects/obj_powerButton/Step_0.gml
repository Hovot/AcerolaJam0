/// @description 

if(deleteWhenDone && layer_sequence_is_finished(seq)){
	layer_sequence_destroy(seq)
	layer_sequence_destroy(seqWand)
	//power gained
	with(obj_player){
		powerGained = other.powerGained
		event_user(0)	
	}
	
	with(obj_sucker){
		instance_destroy()
	}
	
	instance_destroy()
}




