/// @description play ad
obj_gameManager.pauseAllButMe()

//play seq
seq = layer_sequence_create("AdLayer", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), adSeq)
var seqInst = layer_sequence_get_instance(seq)
sequence_instance_override_object(seqInst, obj_powerButton, instance_create_layer(x, y, "AdLayer", obj_powerButton, {suckSeq: other.suckSeq}))
//seq deleted by button


