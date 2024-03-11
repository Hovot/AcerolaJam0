/// @description chat typing

//$ - clear everything
//@ - delete previous char

var add = string_char_at(desc, index)

if(add == "$"){ 
	stringToDraw = ""
	index++
	add = string_char_at(desc, index) 
}

if(add == "@"){ 
	stringToDraw = string_delete(stringToDraw, string_length(stringToDraw), 1)

	add = ""
}

stringToDraw += add
index++

if(add != ""){
	audio_play_sound(s_talking, 10, false, 1, 0, random_range(.5, 1.5))
}

alarm_set(11, -1)




