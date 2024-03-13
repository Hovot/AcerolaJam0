/// @description play ad
obj_gameManager.pauseAllButMe()


if(adSeq == sq_adBug){
	obj_gameManager.pauseAllButMe()
	if(!layer_exists("BugEffect")){
		effect = fx_create("_filter_edgedetect")
		layer_create(-10050, "BugEffect")
		layer_set_fx("BugEffect", effect)
	}
		
	layer_enable_fx("BugEffect", true)
	show_debug_message("ere")
}

//play seq
seq = layer_sequence_create("AdLayer", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), adSeq)

var seqInst = layer_sequence_get_instance(seq)
sequence_instance_override_object(seqInst, obj_powerButton, instance_create_layer(x, y, "AdLayer", obj_powerButton, {suckSeq: other.suckSeq, powerGained : other.powerGained}))
//seq deleted by button

instance_create_layer(0, 0, "AdLayer", obj_sucker)

