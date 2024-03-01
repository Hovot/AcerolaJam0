/// @description Attack

//snack attack (bite)
var meleeRange = 10
var agroSpd = 1.5*spd

//is player in range?
if(point_in_circle(obj_player.x, obj_player.y, x, y, meleeRange)){
	show_debug_message("ATTACK")
} else {
	var oldX = x
	mp_potential_step(obj_player.x, obj_player.y, agroSpd, false)

	if(sign(x - oldX) != 0){
		scaleDir = -sign(x - oldX)
	}
}





