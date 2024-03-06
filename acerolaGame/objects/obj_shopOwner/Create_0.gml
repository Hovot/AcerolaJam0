/// @description 


// Inherit the parent event
event_inherited();

desc = "Take a look"

watchPlayer = false

path = pth_shop
pathSpeed = 0.30
path_start(path, pathSpeed, path_action_reverse, false)
alarm_set(0, irandom_range(90, 180))

previousX = path_get_x(path, 0)

moveAgain = function(){
	//start moving again
	path_speed = pathSpeed
	alarm_set(0, irandom_range(90, 180))
}

shopOpen = false