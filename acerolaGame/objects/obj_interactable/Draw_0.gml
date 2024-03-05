/// @description 

if(inCircle && outline){
	shader_set(sh_outline)
	shader_set_uniform_f(uPixelH, texelH)
	shader_set_uniform_f(uPixelW, texelW)
	draw_sprite_ext(sprite_index, image_index, x, y, xScale, yScale, image_angle, c_white, 1)
	shader_reset()
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, xScale, yScale, image_angle, c_white, 1)
}


//draw_circle(x, y, radius, true)




