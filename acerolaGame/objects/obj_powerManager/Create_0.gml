/// @description 

//common
burgerPower = false
burgerSprite = spr_burgerPower

raidPower = false
raidSprite = spr_burgerPower

shavePower = false
shaveSprite = spr_burgerPower

phonePower = false
phoneSprite = spr_burgerPower

datingPower = false
datingSprite = spr_burgerPower

wandLargePower = false
wandLargeSprite = spr_burgerPower

//rare
runnerPower = false
runnerSprite = spr_burgerPower

clashPower = false
clashSprite = spr_burgerPower

skinPower = false
skinSprite = spr_burgerPower

//ultra rare
bugPower = false
bugSprite = spr_burgerPower

crashPower = false
crashSprite = spr_burgerPower

BSODPower = false
BSODSprite = spr_burgerPower


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
