/// @description 

if(dead) {
	if(image_index <= 1){
		image_speed = 0
		image_index = 49
		global.gameOver = true
	}
	return	
}

if(powerUp && image_index >= gestureFrame + numberOfFrames - 1){ //powerup animation exit
	currentAnimation = idleFrame
	powerUp = false
	powerManager.gainPower(powerGained)
}

if(powerUp){return} //playing powerup animation

//sprint
if(keyboard_check(vk_shift)){
	spd = sptSpd
} else {
	spd = mvSpd
}

//get input
var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"))

//fix fast diagonal
if(moveX == 0 or moveY == 0){
	moveX *= spd
	moveY *= spd
} else {
	moveX *= spd * sin(degtorad(45))
	moveY *= spd * sin(degtorad(45))
}

if(moveX != 0){
	image_xscale = sign(moveX)
}

if(moveX != 0 or moveY != 0){
	currentAnimation = walkFrame
} else {
	currentAnimation = idleFrame
}

//attack
if(keyboard_check(vk_space)){
	currentAnimation = attackFrame
	moveX = 0 //locks player when firing
	moveY = 0
	
	//face mouse
	if(mouse_x > x){
		image_xscale = abs(image_xscale)
	} else {
		image_xscale = -abs(image_xscale)
	}
}

//spawn bullet
if(floor(image_index) == 36){
	if(alarm_get(2) <= 0){ //just 1 per cast
		repeat(bulletNum){
			var dist = random_range(-10, 10)
			instance_create_depth(x + (15*sign(image_xscale)), y - (16*sign(image_yscale)) + dist*(bulletNum-1), depth, obj_bullet, {bulletDmg : other.bulletDmg})
		}
		alarm_set(2, 10)
	}
}

//actually move
move_and_collide(moveX, moveY, collisionList, 4, 0, 0, spd, spd)

//animation - loop current
if(image_index < currentAnimation or image_index > currentAnimation + numberOfFrames - 1){
	image_index = currentAnimation
}