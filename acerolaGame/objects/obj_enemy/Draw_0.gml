/// @description 
//debug stuff

draw_circle_color(x, y - sprite_height/2, attackRadius, c_yellow, c_yellow, true) //it agros player inside
draw_circle_color(x, y - sprite_height/2, meleeFinishRange, c_red, c_red, true) //attacks player inside
draw_circle_color(x, y - sprite_height/2, meleeStartRange, c_orange, c_orange, true) //attacks player inside
draw_circle_color(x, y - sprite_height/2, hitRadius, c_blue, c_blue, true) //bullets hit it
draw_rectangle_color(x - sprite_width/2, y, x + sprite_width/2, y - sprite_height, c_white, c_white, c_white, c_white, true) //wall hitbox

//itself + shadow
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*xDir, image_yscale, image_angle, image_blend, image_alpha) 
draw_sprite_ext(spr_shadows, 0, x, y, image_xscale*xDir, image_yscale, image_angle, c_dkgrey, 0.25)

//draw health bar if not at 100%
if(hp != maxHP){
	var thickness = 0.5
	draw_healthbar(x - sprite_width/2, y - sprite_height, x + sprite_width/2, y - sprite_height + thickness, hpPercent, c_black, c_red, c_red, 0, false, false)
}