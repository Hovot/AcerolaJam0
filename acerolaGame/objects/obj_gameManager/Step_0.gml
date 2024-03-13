/// @description 

if(keyboard_check_pressed(vk_escape) && room != EndOfGame  && room != MainMenu && room != OptionsMenu && !instance_exists(obj_shop)){
	global.paused = !global.paused
	if(global.paused){
		instance_deactivate_all(true)
		instance_activate_object(obj_powerManager)
		instance_create_depth(0, 0, -6000, obj_pauseMenu, {level : array_length(levelTimes)})
	} else {
		instance_destroy(obj_pauseMenu)
		instance_activate_all()
	}
}


if(mouse_check_button_pressed(mb_left)){
	cursor_sprite = spr_wandCursorClick
}
if(mouse_check_button_released(mb_left)){
	cursor_sprite = spr_wandCursor
}

if(!global.paused && room != MainMenu && room != OptionsMenu){totalTime++}

if(global.gameOver && !instance_exists(obj_button)&& !tryAgain){with(instance_create_layer(obj_player.x, obj_player.y + 15, layer, obj_button)){buttonText = "Restart"; onClick = function(){game_restart()}}}
if(global.gameOver && !instance_exists(obj_button) && tryAgain){with(instance_create_layer(obj_player.x, obj_player.y + 15, layer, obj_button)){buttonText = "Try Again!"; onClick = function(){obj_gameManager.restartLvl()}}}

if(!audio_is_playing(s_music) && !audio_is_playing(s_tense) && alarm_get(0) <= 0){alarm_set(0, 60*120)}