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
		obj_player.takeDmg(5)
		alarm_set(1, atkCooldown * 60)
	}

	
} else {
	var oldX = x
	mp_potential_step(obj_player.x, obj_player.y, agroSpd, false)

	if(sign(x - oldX) != 0){
		scaleDir = -sign(x - oldX)
	}
}





