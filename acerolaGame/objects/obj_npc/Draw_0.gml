/// @description 
draw_self()

if(drawText){
	draw_set_font(f_npcText)
	draw_text(x, y, desc)
	if(alarm_get(0) <= 0){
		alarm_set(0, 60)
	}
}




