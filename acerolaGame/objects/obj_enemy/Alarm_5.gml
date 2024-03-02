/// @description wander time
alarm_set(5, -1)
state = choose(states.idle, states.wander)
goalX = 0
goalY = 0