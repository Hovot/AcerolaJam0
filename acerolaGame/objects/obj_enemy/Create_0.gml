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

sprite_index = choose(spr_bat, spr_goblin, spr_goblin2, spr_orc, spr_orc2, spr_rat, spr_skeleton, spr_slimeBlue, spr_slimeGreen, spr_slimeRed, spr_slimeYellow, spr_snake)

//mob deped
spd = random_range(0.5, 1.0)
attackRadius = random_range(100, 125)
attackDmg = random_range(5, 10)
hitRadius = random_range(sprite_width/4, sprite_width/3)
meleeStartRange = random_range(15 * image_xscale, 20 * image_xscale)
meleeFinishRange = random_range(25 * image_xscale, 30 * image_xscale)
hp = irandom_range(25, 40)
maxHP = variable_clone(hp)
hpPercent = 100
boss = false

onDeath = function(){}

//take dmg
takeDmg = function(val){
	if(state == states.death){return}

	hp -= val
	hpPercent = (hp / maxHP) * 100
	if(hp <= 0){
			onDeath()
			if(!audio_is_playing(s_enemyDie)){ audio_play_sound(s_enemyDie, 10, false) }
			if(boss){if(audio_is_playing(s_tense)){ audio_stop_sound(s_tense) }}
		state = states.death
		currentAnimation = deathFrame
		image_index = currentAnimation
		alarm_set(0, -1)
		alarm_set(1, -1)
		alarm_set(2, -1)
		alarm_set(3, -1)
		alarm_set(4, -1)
		alarm_set(5, -1)
		alarm_set(6, -1)
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
