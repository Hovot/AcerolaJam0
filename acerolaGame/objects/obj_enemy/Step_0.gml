/// @description

if(state == states.death){
	if(yScale <= 0){
		instance_destroy()
	}
	return
}

//non-artist animation
xScale = lerp(abs(xScale), scaleXGoal, 0.05) * scaleDir
yScale = lerp(yScale, scaleYGoal, 0.05)

//bounce back and forth
if(abs(xScale) >= scaleMax-.01){ //ah float math
	scaleXGoal = scaleMin
	scaleYGoal = scaleMax
} else if(abs(xScale) <= scaleMin+.01){
	scaleXGoal = scaleMax
	scaleYGoal = scaleMin
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
	alarm_set(0, irandom_range(60, 75)) //wait for a second ish, then randomly do something else

} else if(state == states.wander){
	if(goalX == 0 && goalY == 0){
		//random direction
		var tgtDir = irandom_range(0, 360)
		goalX = lengthdir_x(spd, tgtDir)
		goalY = lengthdir_y(spd, tgtDir)
		alarm_set(5, irandom_range(minWanderTime, maxWanderTime))  //how long to wander
		
	} else { //still wandering, but have a dir
		var hit = move_and_collide(goalX, goalY, [ceilingTiles, wallTiles])
		
		if(goalX != 0){ //face dir moving
			scaleDir = -sign(goalX)
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


