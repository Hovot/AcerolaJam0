/// @description 

if(target == noone){
	x += lengthdir_x(spd, dir)
	y += lengthdir_y(spd, dir)
} else {
	mp_potential_step_object(target.x, target.y, agroSpd, obj_groundBarrier) //why mad
}

image_angle += 5

//also prolly slow af with a lot of enemies
with(obj_enemy){
	if(point_in_circle(x, y, other.x, other.y, other.seekRadius)){
		other.target = self
	}
}






