/// @description runner
alarm_set(5, -1)
if(global.paused){return}
activeSeqs[5] = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_runnerPower)	
destroyTimes[5] = 120 //seq length

