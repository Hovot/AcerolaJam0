/// @description raid
alarm_set(2, -1)
raidSeq = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_raidPower)
alarm_set(3, 75)

