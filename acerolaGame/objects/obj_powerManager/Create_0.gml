/// @description 

//common 66% 18/27
burgerPower = false
burgerSprite = spr_burgerPower
burgerRate = 60

raidPower = false
raidSprite = spr_raidPower
raidRate = 120

shavePower = false
shaveSprite = spr_shavePower
shaveRate = 45

phonePower = false
phoneSprite = spr_phonePower
phoneRate = 3*60

datingPower = false
datingSprite = spr_datingPower
datingRate = 30*60

wandPower = false
wandSprite = spr_wandPower
wandRate = 60

//rare 22% - 6/27
runnerPower = false
runnerSprite = spr_runnerPower
runnerRate = 60

clashPower = false
clashSprite = spr_burgerPower
clashRate = 60

skinPower = false
skinSprite = spr_burgerPower
skinRate = 60

//ultra rare 11% - 3/27
bugPower = false
bugSprite = spr_burgerPower
bugRate = 60

crashPower = false
crashSprite = spr_burgerPower
crashRate = 60

BSODPower = false
BSODSprite = spr_burgerPower
BSODRate = 60

gainPower = function(numGained){
	switch(numGained){
		case 0: burgerPower = true break
		case 1: raidPower = true break
		case 2: shavePower = true break
		case 3: phonePower = true break
		case 4: datingPower = true break
		case 5: wandPower = true break
		case 6: runnerPower = true break
		case 7: clashPower = true break
		case 8: skinPower = true break
		case 9: bugPower = true break
		case 10: crashPower = true break
		case 11: BSODPower = true break
	}
}

options = [0,0,0, 1,1,1, 2,2,2, 3,3,3, 4,4,4, 5,5,5, 6,6, 7,7, 8,8, 9, 10, 11] //BEHOLD, probability
randomPower = function(){
	if(array_length(options) == 0){return 0} //got all the powers
	
	choice = array_shuffle(options)[0] //why mad
	
	newVals = []
	for(var i = 0; i < array_length(options); i++){
		if(options[i] != choice){
			array_push(newVals, options[i])
		}
	}
	
	options = newVals
	
	return choice

}

destroyTimes = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
activeSeqs = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

destroySeq = function(seqToDestroy){
	layer_sequence_destroy(activeSeqs[seqToDestroy])
	activeSeqs[seqToDestroy] = 0
}