/// @description 
xScale = lerp(abs(xScale), scaleXGoal, 0.05) * scaleDir
yScale = lerp(yScale, scaleYGoal, 0.05)

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
		//new location
		goalX = irandom_range(x - wanderRadius, x + wanderRadius)
		goalY = irandom_range(y - wanderRadius, y + wanderRadius)
	} else if(abs(x - goalX) < 5 && abs(y - goalY) < 5){
		//reached our goal
		state = states.idle
		goalX = 0
		goalY = 0
	} else { //have a goal, we havent reached 
		var deltaX = sign(-(x - goalX))*spd
		var deltaY = sign(-(y - goalY))*spd
		if(sign(deltaX) != 0){
			scaleDir = -sign(deltaX)
		}
		x += deltaX
		y += deltaY
	}
	
} else if(state == states.attack){
	event_user(0)
}


