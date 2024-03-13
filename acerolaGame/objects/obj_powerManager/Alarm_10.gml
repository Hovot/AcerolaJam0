/// @description BSOD
alarm_set(10, -1)
if(global.paused){return}
activeSeqs[10] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_BSODPower)	
destroyTimes[10] = 30 //seq length

