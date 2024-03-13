/// @description dating
alarm_set(4, -1)
if(global.paused){return}
activeSeqs[4] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_datingPower)	
destroyTimes[4] = 60 //seq length

