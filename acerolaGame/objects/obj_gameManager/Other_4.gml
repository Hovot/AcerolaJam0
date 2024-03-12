/// @description 
cursor_sprite = spr_wandCursor

if(room != MainMenu && room != OptionsMenu && showTimeInLevels){
	showTime = true
}


if(room == MainMenu){if(!audio_is_playing(s_music)){audio_play_sound(s_music, 10, false)}}
if(room == Level_3){if(audio_is_playing(s_music)){audio_stop_sound(s_music)} audio_play_sound(s_tense, 10, true)}
if(room == Level_6){if(audio_is_playing(s_music)){audio_stop_sound(s_music)} audio_play_sound(s_tense, 10, true)}
