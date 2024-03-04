/// @description 

if(deleteWhenDone && layer_sequence_is_finished(seq)){
	layer_sequence_destroy(seq)
	//power gained
	with(obj_player){
		powerGained = other.powerGained
		event_user(0)	
	}
	instance_destroy()
}




