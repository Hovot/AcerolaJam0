/// @description

if(state == states.death){
	if(fadeOut){ // a slow death
		image_alpha -= 0.1
		if(image_alpha <= 0){instance_destroy()}
	}
	
	if(image_index <= deathFrame - 1){
		image_blend = c_white
		image_speed = 0
		image_index = 49
		alarm_set(6, deSpawnTime)
	}
	return
}



if(image_index >= 37 && image_index <= 39){ //the frame where the hit actually hits player
	var atkCooldown = 1 //seconds
	
	obj_player.takeDmg(attackDmg)
	alarm_set(1, atkCooldown * 60)
}

//scan for player
if(point_in_circle(obj_player.x, obj_player.y, x, y - sprite_height/2, attackRadius)){
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
			xDir = -sign(goalX)
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


if(hp <= 0){
	if(state != states.death){
		state = states.death
	}
}
	/*if(currentAnimation != deathFrame){
		currentAnimation = deathFrame
		image_index = currentAnimation
	}
} //prevents zombie mob