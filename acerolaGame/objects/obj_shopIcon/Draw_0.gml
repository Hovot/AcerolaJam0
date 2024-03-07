/// @description 

if(draw){
	draw_set_font(f_timerText)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_text_transformed_color(mouse_x, mouse_y, hint, 0.25, 0.25, 0, c_white, c_white, c_white, c_white, 1)
	draw_set_font(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
}




