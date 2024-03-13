/// @description phone
alarm_set(3, -1)
if(global.paused){return}
activeSeqs[3] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_phonePower)
layer_sequence_xscale(activeSeqs[3], obj_player.image_xscale)	
destroyTimes[3] = 60
