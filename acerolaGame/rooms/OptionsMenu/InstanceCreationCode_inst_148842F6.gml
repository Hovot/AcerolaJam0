useShader = false
if(obj_gameManager.showTimeInLevels){buttonText = "Timer On"} else {buttonText = "Timer Off"}
onClick = function(){
	obj_gameManager.showTimeInLevels = !obj_gameManager.showTimeInLevels
	if(obj_gameManager.showTimeInLevels){buttonText = "Timer On"} else {buttonText = "Timer Off"}
}