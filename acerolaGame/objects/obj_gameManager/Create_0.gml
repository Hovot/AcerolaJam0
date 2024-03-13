/// @description 
global.gameOver = false
global.paused = false
global.returnRoom = MainMenu

fakePause = false
cameraPause = false
tryAgain = true

pauseAllButMe = function(){
	fakePause = !fakePause
	if(fakePause){
		instance_deactivate_all(true)
		instance_activate_object(other)
	} else {
		instance_activate_all()
	}
}

unpauseAll = function(){
	fakePause = false
	instance_activate_all()
}


pauseCamera = function(){
	cameraPause = !cameraPause
	if(cameraPause){
		instance_deactivate_object(obj_camera)
	} else {
		instance_activate_object(obj_camera)
	}

}

unpauseCamera = function(){
	cameraPause = false
	instance_activate_object(obj_camera)

}

cursor_sprite = spr_wandCursor

window_set_cursor(cr_none)

gameFrames = 60
totalTime = 0
levelTimes = []
showTime = false
showTimeInLevels = true


unPause = function(){
	global.paused = false
	instance_destroy(obj_pauseMenu)
	instance_activate_all()
}

purchased = []

restartLvl = function(){
	with(obj_button){instance_destroy()}
	tryAgain = false
	global.gameOver = false
	obj_player.dead = false
	obj_player.hp = obj_player.maxHP
	obj_player.image_speed = 1
}
