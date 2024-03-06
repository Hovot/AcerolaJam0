/// @description 

// Inherit the parent event
event_inherited();

//shadow
draw_sprite_ext(spr_shadows, 0, x, y + sprite_height/2, image_xscale, image_yscale, 0, c_dkgrey, 0.25)

if(string_length(stringToDraw) > 0){
	draw_set_font(f_npcText)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_text_transformed(x, y - sprite_height/2, stringToDraw, .25, .25, 0)
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
}