/// @description 
if(clicked){return}
clicked = true

seq = layer_sequence_create("AdLayer", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), suckSeq)
seqWand = layer_sequence_create("AdLayer_Wand", camera_get_view_x(view_camera[0]),  camera_get_view_y(view_camera[0]), wand)
layer_sequence_destroy(obj_adController.seq)
obj_gameManager.pauseAllButMe()
obj_gameManager.pauseCamera()

//start the SUCK
obj_sucker.suck(40)

deleteWhenDone = true
visible = false



