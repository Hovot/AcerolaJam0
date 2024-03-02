/// @description 

image_xscale = 0.5
image_yscale = 0.5

alarm_set(0, 3*60) //lifetime

spd = 2
agroSpd = 3

dir = point_direction(x, y, mouse_x, mouse_y)

seekRadius = 15
target = noone

bulletDmg = 5

ceilingTiles = layer_tilemap_get_id("Blackness")