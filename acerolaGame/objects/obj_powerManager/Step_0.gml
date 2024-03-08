/// @description 
for(var i = 0; i < array_length(destroyTimes); i++){
	if(destroyTimes[i] < 0) {continue}
	if(destroyTimes[i] == 0){destroySeq(i); destroyTimes[i] = -1; continue}
	if(destroyTimes[i] > 0){destroyTimes[i]--}
}

//burger
if(burgerPower && destroyTimes[0] == -1 && alarm_get(0) <= 0 ){
	alarm_set(0, burgerRate)

}
if(burgerPower && layer_sequence_exists("Instances", activeSeqs[0])){ //keep centered on player
	layer_sequence_x(activeSeqs[0], obj_player.x)
	layer_sequence_y(activeSeqs[0], obj_player.y)
}

//raid
if(raidPower && destroyTimes[1] == -1 && alarm_get(1) <= 0 ){
	alarm_set(1, raidRate)

}
if(raidPower && layer_sequence_exists("Instances", activeSeqs[1])){
	layer_sequence_x(activeSeqs[1], obj_player.x)
	layer_sequence_y(activeSeqs[1], obj_player.y)
}

//shave
if(shavePower && destroyTimes[2] == -1 && alarm_get(2) <= 0 ){
	alarm_set(2, shaveRate)
}

//phone
if(phonePower && destroyTimes[3] == -1 && alarm_get(3) <= 0 ){
	alarm_set(3, phoneRate)

}
if(phonePower && layer_sequence_exists("Instances", activeSeqs[3])){
	layer_sequence_x(activeSeqs[3], obj_player.x)
	layer_sequence_y(activeSeqs[3], obj_player.y)
	layer_sequence_xscale(activeSeqs[3], obj_player.image_xscale)	
}

//dating
if(datingPower && destroyTimes[4] == -1 && alarm_get(4) <= 0 ){
	alarm_set(4, datingRate)

}
if(datingPower && layer_sequence_exists("Instances", activeSeqs[4])){
	layer_sequence_x(activeSeqs[4], obj_player.x)
	layer_sequence_y(activeSeqs[4], obj_player.y)
}

//wand
if(wandPower){
	obj_player.bulletNum = 3
}

//runner
if(runnerPower && destroyTimes[5] == -1 && alarm_get(5) <= 0 ){
	alarm_set(5, runnerRate)

}



