/// @description 
cursor_sprite = spr_wandCursor

if(room != MainMenu && room != OptionsMenu && showTimeInLevels){
	showTime = true
}


if(room == MainMenu){if(!audio_is_playing(s_music)){audio_play_sound(s_music, 10, false)}}
