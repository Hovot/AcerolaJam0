/// @description

if(state == states.death){
	if(image_index <= 1){
		color = c_white
		image_speed = 0
		image_index = 49
		alarm_set(6, deSpawnTime)
	}
	return
}



//scan for player
if(point_in_circle(obj_player.x, obj_player.y, x, y, attackRadius)){
	state = states.attack
} else if(state == states.attack){ //out of range, leave attack state
	state = states.idle
	goalX = 0
	goalY = 0
}

if(state == states.idle && alarm_get(0) <= 0){
	currentAnimation = idleFrame
	alarm_set(0, irandom_range(60, 75)) //wait for a second ish, then randomly do something else

} else if(state == states.wander){
	currentAnimation = walkFrame
	
	if(goalX == 0 && goalY == 0){
		//random direction
		var tgtDir = irandom_range(0, 360)
		goalX = lengthdir_x(spd, tgtDir)
		goalY = lengthdir_y(spd, tgtDir)
		alarm_set(5, irandom_range(minWanderTime, maxWanderTime))  //how long to wander
		
	} else { //still wandering, but have a dir
		var hit = move_and_collide(goalX, goalY, [ceilingTiles, wallTiles])
		
		if(goalX != 0){ //face dir moving
			image_xscale = -sign(goalX)
		}
		
		if(array_length(hit) > 0){
			//hit something
			goalX = 0
			goalY = 0
			state = states.idle
		}
	}
	
} else if(state == states.attack){
	event_user(0)
}


//animation - loop current
if(image_index < currentAnimation or image_index > currentAnimation + numberOfFrames - 1){
	image_index = currentAnimation
}