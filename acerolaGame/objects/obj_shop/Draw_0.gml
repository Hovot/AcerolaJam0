/// @description 
var scale = 2

var xPos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - sprite_get_width(spr_shopMenu)*scale/2
var yPos = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 -  sprite_get_height(spr_shopMenu)*scale/2

draw_sprite_ext(spr_shopMenu, 0, xPos,  yPos, scale, scale, 0, c_white, 1)





