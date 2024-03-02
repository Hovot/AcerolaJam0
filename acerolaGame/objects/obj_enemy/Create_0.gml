/// @description 
scaleMax = 1.2
scaleMin = 0.8
scaleXGoal = scaleMax
scaleYGoal = scaleMin
currentScale = 1
scaleDir = 1
xScale = 1
yScale = 1

ceilingTiles = layer_tilemap_get_id("Blackness")
wallTiles = layer_tilemap_get_id("Walls")

spd = 0.5

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

attackRadius = 100
attackDmg = 5

hp = 25
maxHP = 25
hpPercent = 100

color = c_white

//take dmg
takeDmg = function(val){
	if(state == states.death){return}
	
	if(alarm_get(2) <= 0){
		hp -= val
		hpPercent = (hp / maxHP) * 100
		color = c_red
		if(hp <= 0){
			state = states.death
			alarm_set(4, 5) //death animation
		} else { //flash dmg
			alarm_set(2, 30)
			alarm_set(3, 5)
		}
	}
}