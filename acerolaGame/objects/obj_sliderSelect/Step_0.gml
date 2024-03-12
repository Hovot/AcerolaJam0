/// @description 
if(inside && mouse_check_button(mb_left)){
	x = clamp(mouse_x, minX, maxX)
	newX = (x - minX) / (maxX- minX)
}

if(mouse_check_button_released(mb_left) && newX != x){
	inside = false
	audio_group_set_gain(audioGroup, newX, 0)
}



