/// @description burger
alarm_set(0, -1)
if(global.paused){return}
activeSeqs[0] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_burgerPower)
destroyTimes[0] = 60

