/// @description 
open = false

openSprite = spr_doorsNS
openFrame = 1

closedSprite = spr_doorsNS
closedFrame = 1

toggle = function(){
	open = !open
	if(open){
		sprite_index = openSprite
		image_index = openFrame
	} else {
		sprite_index = closedSprite
		image_index = closedFrame		
	}
}

