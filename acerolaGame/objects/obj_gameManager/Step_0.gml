/// @description 

if(keyboard_check_pressed(vk_escape)){
	global.paused = !global.paused
	if(global.paused){
		instance_deactivate_all(true)
	} else {
		instance_activate_all()
	}
}




