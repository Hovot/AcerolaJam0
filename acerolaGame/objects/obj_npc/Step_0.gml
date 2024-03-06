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

if(alarm_get(11) <= 0){alarm_set(11, typingSpeed)}

if(not inCircle){stringToDraw = ""; index = 1} //disappear, reset if walk away

