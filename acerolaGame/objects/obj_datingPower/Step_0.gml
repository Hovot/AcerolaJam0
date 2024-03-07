/// @description 

// Inherit the parent event
event_inherited();
if(numHits > 0){
	if(obj_player.hpPercent < 100){
		obj_player.heal(1)
		numHits--
	}
}

