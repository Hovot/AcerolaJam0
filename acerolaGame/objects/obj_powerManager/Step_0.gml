/// @description 


if(burgerPower && alarm_get(1) <= 0 && alarm_get(0) <= 0 ){
	alarm_set(0, burgerRate)

}

if(raidPower && alarm_get(3) <= 0 && alarm_get(2) <= 0 ){
	alarm_set(2, raidRate)

}
if(raidPower && layer_sequence_exists("Instances", raidSeq)){
	layer_sequence_x(raidSeq, obj_player.x)
	layer_sequence_y(raidSeq, obj_player.y)
}


