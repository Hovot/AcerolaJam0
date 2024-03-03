/// @description 

inCircle = false
if(rectangle_in_circle(obj_player.x - abs(obj_player.sprite_width)/2, obj_player.y - abs(obj_player.sprite_height), obj_player.x + abs(obj_player.sprite_width/2), obj_player.y, x, y, radius) != 0){
	inCircle = true
}

if(mouse_check_button_pressed(mb_left)){
	if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)){
		if(inCircle){
			event_user(0)
		} else {
			drawText("Too far!", id)
		}
		
	}
}





