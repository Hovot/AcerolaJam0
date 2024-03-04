/// @description 

ceilingTiles = layer_tilemap_get_id("Blackness")
wallTiles = layer_tilemap_get_id("Walls")

//Things I hit that STOP movement, if just want to know hit, use collision event
collisionList = [ceilingTiles, wallTiles, obj_npc, obj_chest]

numberOfFrames = 10
idleFrame = 1
gestureFrame = 11
walkFrame = 21
attackFrame = 31
deathFrame = 41
currentAnimation = idleFrame

dead = false

mvSpd = 2 //1


money = 0
hp = 100

color = c_white

//take dmg
takeDmg = function(val){
	if(dead){return}
	if(alarm_get(0) <= 0){
		hp -= val
		color = c_red
		if(hp <= 0){
			dead = true
			alarm_set(3, 25) //death animation
		}
			alarm_set(0, 30)
			alarm_set(1, 5)
	}
}


powerManager = instance_create_depth(0, 0, depth, obj_powerManager)



randomize()