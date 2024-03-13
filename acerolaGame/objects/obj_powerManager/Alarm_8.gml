/// @description bug
alarm_set(8, -1)
if(global.paused){return}
activeSeqs[8] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_bugPower)	
destroyTimes[8] = 120 //seq length

