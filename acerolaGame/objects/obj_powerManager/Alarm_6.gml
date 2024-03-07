/// @description phone
alarm_set(6, -1)
phoneSeq = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_phonePower)
layer_sequence_xscale(phoneSeq, obj_player.image_xscale)	
alarm_set(7, 60) //seq length

