/// @description shave
alarm_set(2, -1)
activeSeqs[2] = layer_sequence_create("Instances", obj_player.x,  irandom_range(obj_player.y - 100, obj_player.y + 100), sq_shavePower)
destroyTimes[2] = 4*60 //seq length

