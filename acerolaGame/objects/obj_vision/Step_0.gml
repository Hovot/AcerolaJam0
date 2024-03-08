/// @description 
if(image_alpha == 0){ //once visible, destory. coming in and out of vision is too distracting
	instance_destroy()
}

if(show){
	image_alpha = max(image_alpha - .05, 0)
	return // commit to the fade out
} else {
	image_alpha = min(image_alpha + .05, 1) //not used if deleted once seen
}

var currentX = obj_player.x
var currentY = obj_player.y - obj_player.sprite_height + 4

var stepSize = 2
var timeOut = 50

var numPoints = 4
var xOffset = sprite_width/numPoints
var yOffset = sprite_height/numPoints

for(var i = 0; i < numPoints; i++){
	currentX = obj_player.x
	currentY = obj_player.y - obj_player.sprite_height + 4

	repeat(timeOut){
		var dir = point_direction(currentX, currentY, x - sprite_width/2 + i*xOffset, y - sprite_height/2 + i*yOffset) //direction to room
		currentX += lengthdir_x(stepSize, dir) //step towards room
		currentY += lengthdir_y(stepSize, dir) //step towards room
		if(point_in_rectangle(currentX, currentY, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)){
			//can see room
			show = true
			return //only 1 point is visible mean the room is visible
		}
		if(tilemap_get_at_pixel(ceilingTiles, currentX, currentY) != 0){
			//hit darkness
			show = false
			break // ALL points need to be obstructed in order for room to be hidden
		}
	
	}
}









