/// @description skin
alarm_set(7, -1)
if(global.paused){return}
activeSeqs[7] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_skinPower)	
destroyTimes[7] = 120 //seq length

