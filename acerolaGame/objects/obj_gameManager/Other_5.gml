/// @description 
if(room != MainMenu && room != OptionsMenu && !room_persistent){
	array_push(levelTimes, totalTime)
	totalTime = 0
	show_debug_message("TIMES: " + string(levelTimes))
}


if(audio_is_playing(s_tense)){audio_stop_sound(s_tense)}


