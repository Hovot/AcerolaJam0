/// @description burger
alarm_set(0, -1)

burgerSeq = layer_sequence_create("Instances", obj_player.x,  obj_player.y, sq_burgerPower)
var seqInst = layer_sequence_get_instance(burgerSeq)
alarm_set(1, 60)


