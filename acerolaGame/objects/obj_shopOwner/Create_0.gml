/// @description 


// Inherit the parent event
event_inherited();

watchPlayer = false

path = pth_shop
pathSpeed = 0.5
path_start(path, pathSpeed, path_action_reverse, true)
alarm_set(0, irandom_range(90, 180))

previousX = path_get_x(path, 0)
