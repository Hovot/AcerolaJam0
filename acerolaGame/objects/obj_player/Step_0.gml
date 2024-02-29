/// @description 

var deltaX = 0
var deltaY = 0

//movement
if(keyboard_check(ord("W")) or keyboard_check(vk_up)){
	deltaY -= 1
	currentAnimation = walkFrame
}

if(keyboard_check(ord("S")) or keyboard_check(vk_down)){
	deltaY += 1
	currentAnimation = walkFrame
}

if(keyboard_check(ord("D")) or keyboard_check(vk_right)){
	deltaX += 1
	currentAnimation = walkFrame
	image_xscale = abs(image_xscale)
}
if(keyboard_check(ord("A")) or keyboard_check(vk_left)){
	deltaX -= 1
	currentAnimation = walkFrame
	image_xscale = -abs(image_xscale)
}

//idle if no movement
if(deltaX == 0 and deltaY == 0){
	currentAnimation = idleFrame
}

//attack
if(keyboard_check(vk_space)){
	currentAnimation = attackFrame
	deltaY = 0 //locks player when firing
	deltaX = 0
}

//gesture
if(keyboard_check(ord("V"))){
	currentAnimation = gestureFrame
	deltaY = 0 //locks player when firing
	deltaX = 0
}

//die
if(keyboard_check(ord("B"))){
	currentAnimation = deathFrame
	deltaY = 0 //locks player when firing
	deltaX = 0
}


if(deltaX == 0 or deltaY == 0){
	x += deltaX * mvSpd
	y += deltaY * mvSpd
} else {
	x += deltaX * mvSpd * sin(degtorad(45))
	y += deltaY * mvSpd * sin(degtorad(45))
}


//animation - loop current
if(image_index < currentAnimation or image_index > currentAnimation + numberOfFrames - 1){
	image_index = currentAnimation
}