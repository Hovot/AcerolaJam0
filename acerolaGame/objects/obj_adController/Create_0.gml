/// @description 

seq = pointer_null

//these 3 to pick a power
adSeq = sq_adBurger
suckSeq = sq_adBurgerSuck
powerGained = 0


//asks power manager for a power to earn, then deceides the correct 2 sequences to play and plays them
//at the end of all that the power manager adds the power
pickPowerAndPlay = function(){
	powerGained = obj_powerManager.randomPower()
	
	switch(powerGained){
		case 0: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 1: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 2: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 3: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 4: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 5: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 6: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 7: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 8: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 9: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 10: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
		case 11: adSeq = sq_adBurger; suckSeq = sq_adBurgerSuck; break
	}
	
	event_user(0)
	
}