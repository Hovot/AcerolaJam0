/// @description 
draw_self()

if(string_length(label) > 0){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(f_menuText)
	draw_text_transformed_color(x, y + sprite_height, label, .0625*image_yscale, .0625*image_yscale, 0, image_blend, image_blend, image_blend, image_blend, 1)
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
}






