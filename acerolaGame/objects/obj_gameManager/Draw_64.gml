/// @description 

if(showTimeInLevels && showTime && room != EndOfGame){
	var time = totalTime
	
	var hours = string(floor(time / (gameFrames*60*60)))
	var mins = string((floor(time / (gameFrames*60))) % 60)
	var secs = string((floor(time / gameFrames)) % 60)
	
	if(string_length(hours) < 2){hours = "0" + hours}
	if(string_length(mins) < 2){mins = "0" + mins}
	if(string_length(secs) < 2){secs = "0" + secs}
	
	var str = hours + ":" + mins + ":" + secs
	
	draw_set_font(f_timerText)
	draw_set_halign(fa_right)
	draw_text_transformed_color(surface_get_width(application_surface) - 25, 15, str, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_color(surface_get_width(application_surface) - 25, 50, fps_real, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	
	draw_set_font(-1)
	draw_set_halign(-1)
}



