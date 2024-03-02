/// @description Attack

//snack attack (bite)
var meleeRange = 15
var agroSpd = 1.5*spd
var atkCooldown = 1 //seconds

//is player in range?
if(point_in_circle(obj_player.x, obj_player.y, x, y, meleeRange)){
	if(alarm_get(1) <= 0){
		//animate
		xScale = 6
		yScale = .2
		obj_player.takeDmg(attackDmg)
		alarm_set(1, atkCooldown * 60)
	}

	
} else {
	var tgtDir = point_direction(x, y, obj_player.x, obj_player.y)
	goalX = lengthdir_x(agroSpd, tgtDir)
	goalY = lengthdir_y(agroSpd, tgtDir)
	
	//var hit = move_and_collide(goalX, goalY, [ceilingTiles, wallTiles]) //This one is dumb but works with tile sets
	mp_potential_step_object(obj_player.x, obj_player.y, agroSpd, obj_barrier.id) //no tile sets, sadge

	if(goalX != 0){ //face dir moving
		scaleDir = -sign(goalX)
	}
}





