/// @description 

if(numHits > 0){
	with(obj_enemy){
		if(point_in_circle(other.x, other.y, x, y - sprite_height/2, hitRadius)){
			takeDmg(other.dmg)
			other.numHits--
		}
	}
}




