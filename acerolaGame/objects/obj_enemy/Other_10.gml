/// @description Attack

//movement spd when see player
var agroSpd = 1.5*spd

//is player in range of CENTER OF MASS?
if(point_in_circle(obj_player.x, obj_player.y - obj_player.sprite_height/2, x, y - sprite_height/2, meleeFinishRange)){	
	if(currentAnimation == attackFrame){return} //currently attacking
	if(alarm_get(1) <= 0 && point_in_circle(obj_player.x, obj_player.y - obj_player.sprite_height/2, x, y - sprite_height/2, meleeStartRange)){
		currentAnimation = attackFrame
		return
	}	
} 

currentAnimation = walkFrame
var tgtDir = point_direction(x, y, obj_player.x, obj_player.y + 1) //go to y+1 so they dont hide behind player
goalX = lengthdir_x(agroSpd, tgtDir)
goalY = lengthdir_y(agroSpd, tgtDir)
	
//var hit = move_and_collide(goalX, goalY, [ceilingTiles, wallTiles]) //This one is dumb but works with tile sets
mp_potential_step_object(obj_player.x, obj_player.y + 1, agroSpd, obj_barrier) //no tile sets, sadge

if(floor(image_index) == 26){if(!audio_is_playing(s_enemyWalk)){ audio_play_sound(s_enemyWalk, 10, false) }}

if(goalX != 0){ //face dir moving
	xDir = -sign(goalX)
}





