/// @description 

numberOfFrames = 10
idleFrame = 1
gestureFrame = 11
walkFrame = 21
attackFrame = 31
deathFrame = 41
currentAnimation = idleFrame


mvSpd = 2 //1


money = 0
hp = 100

color = c_white

//take dmg
takeDmg = function(val){
	if(alarm_get(0) <= 0){
		hp -= val
		color = c_red
		alarm_set(0, 30)
		alarm_set(1, 5)
	}
}

randomize()