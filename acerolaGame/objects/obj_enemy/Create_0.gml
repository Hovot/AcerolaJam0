/// @description 
scaleMax = 1.2
scaleMin = 0.8
scaleXGoal = scaleMax
scaleYGoal = scaleMin
currentScale = 1
scaleDir = 1
xScale = 1
yScale = 1

spd = 0.5

states = {
	wander : 1,
	idle : 2,
	attack : 3
}

state = states.idle
goalX = 0
goalY = 0
wanderRadius = 75

attackRadius = 100