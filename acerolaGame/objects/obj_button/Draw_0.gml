/// @description 

if(outline){
	shader_set(sh_outline)
	shader_set_uniform_f(uPixelH, texelH)
	shader_set_uniform_f(uPixelW, texelW)
	draw_self()
	shader_reset()
} else {
	draw_self()
}




