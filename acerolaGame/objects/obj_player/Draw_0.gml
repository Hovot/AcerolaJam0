/// @description 

//shadow
draw_sprite_ext(spr_shadows, 0, x, y, image_xscale, image_yscale, 0, c_dkgrey, 0.25)

//money
draw_set_font(f_npcText)
draw_set_halign(fa_left)
draw_set_color(c_yellow)
draw_text_transformed(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]) + 10, "$" + string(money), 0.25, 0.25, 0)
draw_set_color(c_white)
draw_set_font(-1)
draw_set_halign(-1)

//hp
draw_healthbar(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]) + 30, camera_get_view_x(view_camera[0]) + 50, camera_get_view_y(view_camera[0]) + 35, hpPercent, c_black, c_red, c_green, 0, true, true)

//character
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, color, 1)




