/// @description 

draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_font(f_menuText)
var msg = "Thank you for playing!"
var color = c_black
draw_text_transformed_color(surface_get_width(application_surface)/2, 10, msg, 1, 1, 0, color, color, color, color, 1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)

draw_set_font(f_timerText)
draw_set_halign(fa_right)
draw_text_transformed_color(surface_get_width(application_surface) - 25, 150 - 50, "Gold: " + string(gold), 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
draw_set_font(-1)
draw_set_halign(-1)

//draw times
var index = 0
var gameFrames = 60

for(var i = 0; i < array_length(obj_gameManager.levelTimes); i++){
	var time = obj_gameManager.levelTimes[i]
	
	var hours = string(floor(time / (gameFrames*60*60)))
	var mins = string((floor(time / (gameFrames*60))) % 60)
	var secs = string((floor(time / gameFrames)) % 60)
	
	if(string_length(hours) < 2){hours = "0" + hours}
	if(string_length(mins) < 2){mins = "0" + mins}
	if(string_length(secs) < 2){secs = "0" + secs}
	
	var str = "Level " + string(i+1) + "     " + hours + ":" + mins + ":" + secs
	
	draw_set_font(f_timerText)
	draw_set_halign(fa_right)
	draw_text_transformed_color(surface_get_width(application_surface) - 25, 150 + 50*index, str, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_set_font(-1)
	draw_set_halign(-1)
	index++
}