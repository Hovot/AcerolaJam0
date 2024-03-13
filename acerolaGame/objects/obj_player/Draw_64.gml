/// @description 
//money
draw_set_font(f_npcText)
draw_set_halign(fa_left)
draw_set_color(c_yellow)
draw_text_transformed(25, 25, "$" + string(money), 1, 1, 0)
draw_set_color(c_white)
draw_set_font(-1)
draw_set_halign(-1)

//hp
draw_healthbar(25, 100, 200, 120, hpPercent, c_black, c_red, c_green, 0, true, true)








