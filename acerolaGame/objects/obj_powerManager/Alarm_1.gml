/// @description raid
alarm_set(1, -1)
if(global.paused){return}
activeSeqs[1] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_raidPower)
destroyTimes[1] = 75
