/// @description 

//common 66% 18/27
burgerPower = true
burgerSprite = spr_burgerPower
burgerRate = 60
burgerSeq = sq_burgerPower

raidPower = true
raidSprite = spr_raidPower
raidRate = 60
raidSeq = pointer_null

shavePower = false
shaveSprite = spr_burgerPower
shaveRate = 60
shaveSeq = pointer_null

phonePower = false
phoneSprite = spr_burgerPower
phoneRate = 60
phoneSeq = pointer_null

datingPower = false
datingSprite = spr_burgerPower
datingRate = 60
datingSeq = pointer_null

wandLargePower = false
wandLargeSprite = spr_burgerPower
wandRate = 60
wandSeq = pointer_null

//rare 22% - 6/27
runnerPower = false
runnerSprite = spr_burgerPower
runnerRate = 60
runnerSeq = pointer_null

clashPower = false
clashSprite = spr_burgerPower
clashRate = 60
clashSeq = pointer_null

skinPower = false
skinSprite = spr_burgerPower
skinRate = 60
skinSeq = pointer_null

//ultra rare 11% - 3/27
bugPower = false
bugSprite = spr_burgerPower
bugRate = 60
bugSeq = pointer_null

crashPower = false
crashSprite = spr_burgerPower
crashRate = 60
crashSeq = pointer_null

BSODPower = false
BSODSprite = spr_burgerPower
BSODRate = 60
BSODSeq = pointer_null

gainPower = function(numGained){
	switch(numGained){
		case 0: burgerPower = true break
		case 1: raidPower = true break
		case 2: shavePower = true break
		case 3: phonePower = true break
		case 4: datingPower = true break
		case 5: wandLargePower = true break
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
