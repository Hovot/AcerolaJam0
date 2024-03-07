/// @description 
if(!enabled){
	image_blend = c_gray
}

if(outline && useShader){
	shader_set(sh_outline)
	shader_set_uniform_f(uPixelH, texelH)
	shader_set_uniform_f(uPixelW, texelW)
	draw_self()
	shader_reset()
} else {
	draw_self()
}

if(string_length(buttonText) > 0){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(f_menuText)
	draw_text_transformed_color(x, y, buttonText, .125*image_yscale, .125*image_yscale, 0, image_blend, image_blend, image_blend, image_blend, 1)
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
}




