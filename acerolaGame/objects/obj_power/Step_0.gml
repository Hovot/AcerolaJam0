/// @description 

if(numHits > 0){
	with(obj_enemy){
		if(rectangle_in_circle(other.x - other.sprite_width/2, other.y - other.sprite_height/2, other.x + other.sprite_width/2, other.y + other.sprite_height/2, x, y - sprite_height/2, hitRadius)){
			takeDmg(other.dmg)
			other.numHits--
		}
	}
}




