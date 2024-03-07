/// @description 

global.paused = false

fakePause = false

pauseAllButMe = function(){
	fakePause = !fakePause
	if(fakePause){
		instance_deactivate_all(true)
		instance_activate_object(other)
	} else {
		instance_activate_all()
	}
}

cursor_sprite = spr_wandCursor

window_set_cursor(cr_none)


gameFrames = 60
totalTime = 0
levelTimes = []
showTime = true
showTimeInLevels = true


unPause = function(){
	global.paused = false
	instance_destroy(obj_pauseMenu)
	instance_activate_all()
}

purchased = []
