/// @description 
numberOfFrames = 10
idleFrame = 1
gestureFrame = 11
walkFrame = 21
attackFrame = 31
deathFrame = 41
currentAnimation = idleFrame

xDir = 1

deSpawnTime = 60*3
fadeOut = false

ceilingTiles = layer_tilemap_get_id("Blackness")
wallTiles = layer_tilemap_get_id("Walls")

states = {
	wander : 1,
	idle : 2,
	attack : 3,
	death : 4
}

state = states.idle
goalX = 0
goalY = 0
maxWanderTime = 120
minWanderTime = 30


//mob deped
spd = 0.5
attackRadius = 100
attackDmg = 5
hitRadius = sprite_width/3
meleeStartRange = 15 * image_xscale
meleeFinishRange = 25 * image_xscale
hp = 25
maxHP = 25
hpPercent = 100

//take dmg
takeDmg = function(val){
	if(state == states.death){return}
	
	if(alarm_get(2) <= 0){
		hp -= val
		hpPercent = (hp / maxHP) * 100
		if(hp <= 0){
			state = states.death
			currentAnimation = deathFrame
			image_index = currentAnimation
		} else { //flash dmg
			image_blend = c_red
			alarm_set(2, 30)
			alarm_set(3, 5)
			
			//run towards hit for 2 seconds
			state = states.wander
			var dir = point_direction(x, y, obj_player.x, obj_player.y)
			goalX = lengthdir_x(spd, dir)
			goalY = lengthdir_y(spd, dir)
			alarm_set(5, 120)
			
		}
	}
}