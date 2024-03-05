/// @description 
draw_circle(x, y, attackRadius, true)

draw_sprite_ext(sprite_index, image_index, x, y, xScale, yScale, 0, color, 1) //scales without messing with collision mask
draw_sprite_ext(spr_shadows, 0, x, y, xScale, yScale, image_angle, c_dkgrey, 0.25)

//draw health bar if not at 100%
if(hp != maxHP){
	var thickness = 0.5
	draw_healthbar(x - sprite_width/2, y - sprite_height, x + sprite_width/2, y - sprite_height + thickness, hpPercent, c_black, c_red, c_red, 0, false, false)
}