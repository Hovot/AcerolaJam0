/// @description 

draw_sprite_ext(spr_shadows, 0, x, y, image_xscale, image_yscale, 0, c_dkgrey, 0.25)
draw_set_color(c_red)
draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]) + 10, money)
draw_set_color(c_white)
draw_self()





