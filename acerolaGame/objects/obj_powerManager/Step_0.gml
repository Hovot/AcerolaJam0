/// @description 

//burger
if(burgerPower && alarm_get(1) <= 0 && alarm_get(0) <= 0 ){
	alarm_set(0, burgerRate)

}
if(burgerPower && layer_sequence_exists("Instances", burgerSeq)){ //keep centered on player
	layer_sequence_x(burgerSeq, obj_player.x)
	layer_sequence_y(burgerSeq, obj_player.y)
}

//raid
if(raidPower && alarm_get(3) <= 0 && alarm_get(2) <= 0 ){
	alarm_set(2, raidRate)

}
if(raidPower && layer_sequence_exists("Instances", raidSeq)){
	layer_sequence_x(raidSeq, obj_player.x)
	layer_sequence_y(raidSeq, obj_player.y)
}

//shave
if(shavePower && alarm_get(5) <= 0 && alarm_get(4) <= 0 ){
	alarm_set(4, raidRate)
}