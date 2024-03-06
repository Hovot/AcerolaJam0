/// @description 

//stop moving
alarm_set(0, -1)
alarm_set(1, -1)
alarm_set(2, -1)
path_speed = 0

//look at player
if(obj_player.x > x){
	xScale = abs(xScale)
} else {
	xScale = -abs(xScale)
}

instance_create_depth(0, 0, -5000, obj_shop)
shopOpen = true


