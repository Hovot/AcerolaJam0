/// @description bug
alarm_set(8, -1)
activeSeqs[8] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_bugPower)	
destroyTimes[8] = 60 //seq length
