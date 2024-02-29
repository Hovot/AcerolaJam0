/// @description 
if(mouse_check_button_pressed(mb_left)){
	if(point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)){
		event_user(0)
	}
}





