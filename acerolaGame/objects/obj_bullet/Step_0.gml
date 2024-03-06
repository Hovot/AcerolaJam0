/// @description 

var goalX = lengthdir_x(spd, dir)
var goalY = lengthdir_y(spd, dir)

if(target != noone){
	var tgtDir = point_direction(x, y, target.x*target.image_xscale, target.y*target.image_yscale - target.sprite_height/2)
	goalX = lengthdir_x(agroSpd, tgtDir)
	goalY = lengthdir_y(agroSpd, tgtDir)
}
	
var hit = move_and_collide(goalX, goalY, [ceilingTiles, obj_enemy])

	
for(var i = 0; i < array_length(hit); i++){
	if(!instance_exists(hit[i])){
		instance_destroy()
		
	} else if(hit[i].object_index == obj_enemy){
		hit[i].takeDmg(bulletDmg)
		instance_destroy()
	}		
}


image_angle += 5

//also prolly slow af with a lot of enemies
with(obj_enemy){
	
	if(rectangle_in_circle(x - sprite_width/2, y - sprite_height, x + sprite_width/2, y, other.x, other.y, other.seekRadius) != 0){
		other.target = self
	}
}






