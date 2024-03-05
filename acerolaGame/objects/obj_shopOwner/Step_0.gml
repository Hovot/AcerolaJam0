/// @description 

event_inherited()

if(path_speed != 0){
	if(x > previousX){
		xScale = abs(xScale)
	} else{
		xScale = - abs(xScale)
	}

	previousX = x
}


if(shopOpen && not inCircle){ //close if player walks away
	shopOpen = false
	instance_destroy(obj_shop)
	moveAgain()
}