/// @description 

// Inherit the parent event
event_inherited();

if(pickupAble && rectangle_in_rectangle(x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2, obj_player.x - obj_player.sprite_width/2, obj_player.y, obj_player.x + obj_player.sprite_width/2, obj_player.y - obj_player.sprite_height)){
	event_user(1)
}





