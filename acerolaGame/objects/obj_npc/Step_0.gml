/// @description 

// Inherit the parent event
event_inherited();

//face the player
if(watchPlayer){
	if(obj_player.x < x){
		xScale = -abs(xScale)
	} else {
		xScale = abs(xScale)
	}
}
