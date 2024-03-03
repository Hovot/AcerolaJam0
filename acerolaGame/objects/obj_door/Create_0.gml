/// @description 
open = false

openSprite = spr_doorsEW
openFrame = 1

closedSprite = spr_doorsEW
closedFrame = 0

closedX = x
closedY = y

array_push(obj_player.collisionList, id)

toggle = function(){
	open = !open
	if(open){
		array_delete(obj_player.collisionList, array_get_index(obj_player.collisionList, id), 1)
		sprite_index = openSprite
		image_index = openFrame
		moveToPivot()
	} else {
		array_push(obj_player.collisionList, id)
		sprite_index = closedSprite
		image_index = closedFrame		
		x = closedX
		y = closedY
	}
}


moveToPivot = function(){ //wish I didnt have to do this, but it works lol
	if(closedSprite == spr_doorsEW){
		switch(image_index){
			case 0: y += 16; x+=12; break
			case 1: y += 16 break
			case 2: y = y break
			case 3: y = y break
			case 4: y += 16 break
			case 5: y += 16 break
		}
	
	} else { //NS doors
			switch(image_index){
			case 0: y -= 16 break
			case 1: y -= 16 break
			case 2: y = y break
			case 3: y = y break
			case 4: y -= 16 break
			case 5: y -= 16 break
		}
	}

}
