/// @description 

if(keyboard_check_pressed(vk_escape)){
	global.paused = !global.paused
	if(global.paused){
		instance_deactivate_all(true)
	} else {
		instance_activate_all()
	}
}


if(mouse_check_button_pressed(mb_left)){
	cursor_sprite = spr_wandCursorClick
}
if(mouse_check_button_released(mb_left)){
	cursor_sprite = spr_wandCursor
}

