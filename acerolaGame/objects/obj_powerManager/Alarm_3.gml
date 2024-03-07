/// @description raid - despawn
layer_sequence_destroy(raidSeq)
with(obj_raidPower){instance_destroy()}
alarm_set(3, -1)



