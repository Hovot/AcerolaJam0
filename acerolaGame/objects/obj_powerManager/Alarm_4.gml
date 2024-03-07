/// @description shave
alarm_set(4, -1)
shaveSeq = layer_sequence_create("Instances", obj_player.x,  irandom_range(obj_player.y - 100, obj_player.y + 100), sq_shavePower)
alarm_set(5, 4*60) //seq length

