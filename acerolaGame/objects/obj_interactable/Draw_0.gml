/// @description 

if(inCircle){
	shader_set(sh_outline)
	shader_set_uniform_f(uPixelH, texelH)
	shader_set_uniform_f(uPixelW, texelW)
	draw_self()
	shader_reset()
} else {
	draw_self()
}


draw_circle(x + sprite_width/2, y + sprite_height/2, radius, true)




