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
		case 1: adSeq = sq_adRaid; suckSeq = sq_adRaidSuck; break
		case 2: adSeq = sq_adShave; suckSeq = sq_adShaveSuck; break
		case 3: adSeq = sq_adPhone; suckSeq = sq_adPhoneSuck; break
		case 4: adSeq = sq_adDating; suckSeq = sq_adDatingSuck; break
		case 5: adSeq = sq_adWand; suckSeq = sq_adWandSuck; break
		case 6: adSeq = sq_adRunner; suckSeq = sq_adRunnerSuck; break
		case 7: adSeq = sq_adClash; suckSeq = sq_adClashSuck; break
		case 8: adSeq = sq_adSkin; suckSeq = sq_adSkinSuck; break
		case 9: adSeq = sq_adBug; suckSeq = -1; break
		case 10: adSeq = sq_adCrash; suckSeq = sq_adCrashSuck; break
		case 11: adSeq = sq_adBSOD; suckSeq = sq_adBSODSuck; break
	}
	
	event_user(0)
	
}

effect = fx_create("_filter_edgedetect")
layer_create(-1050, "BugEffect")
layer_set_fx("BugEffect", effect)
layer_enable_fx("BugEffect", false)


effectsOff = function(){
	layer_enable_fx("BugEffect", false)
}
