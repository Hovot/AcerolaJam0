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


