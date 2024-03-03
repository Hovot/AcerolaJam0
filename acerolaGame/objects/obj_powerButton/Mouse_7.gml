/// @description 
var seq = layer_sequence_create("AdLayer", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), suckSeq)
layer_sequence_destroy(obj_adController.seq)
with(obj_adController){
	event_user(1)
}
instance_destroy()





