/// @description 
seq = layer_sequence_create("AdLayer", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), suckSeq)
layer_sequence_destroy(obj_adController.seq)
obj_gameManager.pauseAllButMe()

deleteWhenDone = true
visible = false



