/// @description crash
alarm_set(9, -1)
if(global.paused){return}
activeSeqs[9] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_crashPower)	
destroyTimes[9] = 120 //seq length

