/// @description 

ceilingTiles = layer_tilemap_get_id("Blackness")
wallTiles = layer_tilemap_get_id("Walls")

//Things I hit that STOP movement, if just want to know hit, use collision event
collisionList = [ceilingTiles, wallTiles, obj_npc, obj_chest, obj_table]

numberOfFrames = 10
idleFrame = 1
gestureFrame = 11
walkFrame = 21
attackFrame = 31
deathFrame = 41
currentAnimation = idleFrame

dead = false
powerUp = false


mvSpd = 1
sptSpd = 2.0
spd = mvSpd

money = 0
hp = 100
maxHP = 100
hpPercent = 100

color = c_white

immunityFrames = 30
invin = false

bulletDmg = 5

lootMult = 1

bulletNum = 1

earnLoot = function(val){
	if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
	audio_play_sound(s_pickupLoot, 10, false)
	money += val*lootMult
}

//take dmg
takeDmg = function(val){
	if(dead){return}
	if(invin){return} 
	if(val <= 0){return}
	if(!audio_is_playing(s_playerDmg)){ audio_play_sound(s_playerDmg, 10, false) }
	
	layer_enable_fx("screenShake", true)
	alarm_set(4, 5)
	if(alarm_get(0) <= 0){
		hp -= val
		hpPercent = (hp / maxHP) * 100
		color = c_red
		if(hp <= 0){
			dead = true
			
			if(!audio_is_playing(s_playerDie)){ audio_play_sound(s_playerDie, 10, false) }
			alarm_set(3, 25) //death animation
		}
			alarm_set(0, immunityFrames)
			alarm_set(1, 5)
	}
}

heal = function(val){
	if(dead){return}
	if(hp + val > maxHP){ val = (maxHP - hp)}
	hp += val
	hpPercent = (hp / maxHP) * 100
}

powerManager = instance_create_depth(0, 0, depth, obj_powerManager)
powerGained = 0


randomize()
gml_release_mode(true)

effect = fx_create("_filter_screenshake")
layer_create(-1060, "screenShake")
layer_set_fx("screenShake", effect)
layer_enable_fx("screenShake", false)
fx_set_parameter(effect, "g_Magnitude", 10)
fx_set_parameter(effect, "g_ShakeSpeed", 0.45)
layer_enable_fx("screenShake", false)


