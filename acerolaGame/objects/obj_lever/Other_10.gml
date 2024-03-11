/// @description
for(var i = 0; i < array_length(opensDoor); i++){
	opensDoor[i].toggle()
}

image_index++

thisToo()

if(audio_is_playing(s_lever)){audio_stop_sound(s_lever)}
audio_play_sound(s_lever, 10, false)