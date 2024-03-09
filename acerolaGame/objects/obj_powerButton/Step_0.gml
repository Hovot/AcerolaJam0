/// @description 

if(deleteWhenDone && layer_sequence_is_finished(seqWand)){
	layer_sequence_destroy(seqWand)
	if(seq != pointer_null){
		layer_sequence_destroy(seq)
	} else {
		obj_adController.effectsOff()
	}
	//power gained
	with(obj_player){
		powerGained = other.powerGained
		event_user(0)	
	}
	
	obj_gameManager.unpauseCamera()
	
	with(obj_sucker){
		instance_destroy()
	}
	
	instance_destroy()
}




