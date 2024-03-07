/// @description 

if(keyboard_check_pressed(vk_escape) && room != EndOfGame && !instance_exists(obj_shop)){
	global.paused = !global.paused
	if(global.paused){
		instance_deactivate_all(true)
		instance_create_depth(0, 0, -6000, obj_pauseMenu, {level : array_length(levelTimes)})
	} else {
		instance_destroy(obj_pauseMenu)
		instance_activate_all()
	}
}


if(mouse_check_button_pressed(mb_left)){
	cursor_sprite = spr_wandCursorClick
}
if(mouse_check_button_released(mb_left)){
	cursor_sprite = spr_wandCursor
}

if(!global.paused){totalTime++}
