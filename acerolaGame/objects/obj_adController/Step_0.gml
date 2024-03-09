/// @description 

if(keyboard_check_pressed(ord("Y"))){
	pickPowerAndPlay()
}

if(adSeq == sq_adBug && seq != pointer_null){
	layer_sequence_x(seq, obj_player.x)
	layer_sequence_y(seq, obj_player.y)
}

