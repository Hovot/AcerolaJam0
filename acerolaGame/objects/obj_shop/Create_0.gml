/// @description 
scale = 2
xPos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - sprite_get_width(spr_shopMenu)*scale/2
yPos = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 -  sprite_get_height(spr_shopMenu)*scale/2

//create buttons

var yOff = 18*scale
var xOff = 47*scale

var button0 = instance_create_depth(xPos + xOff, yPos + yOff, depth-1, obj_button)
with(button0){
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$50"
	onClick = function(){
		if(obj_player.money >= 50){
			if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
			audio_play_sound(s_pickupLoot, 10, false)
			obj_player.money -= 50
			obj_player.maxHP = 125
			obj_player.hp = 125
			obj_player.hpPercent = 100
		}
	}
}

var buttonSep = 23*scale

var button1 = instance_create_depth(xPos + xOff, yPos + yOff + buttonSep, depth-1, obj_button)
with(button1){
	if(array_contains(obj_gameManager.purchased, 1)){
		enabled = false
	}
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$125"
	onClick = function(){
		if(obj_player.money >= 125){
			if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
			audio_play_sound(s_pickupLoot, 10, false)
			obj_player.money -= 125
			obj_player.sptSpd = 2.25
			array_push(obj_gameManager.purchased, 1)
			enabled = false
		}
	}
}

var button2 = instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*2, depth-1, obj_button)
with(button2){
	if(array_contains(obj_gameManager.purchased, 2)){
		enabled = false
	}
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$80"
	onClick = function(){
		if(obj_player.money >= 80){
			if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
			audio_play_sound(s_pickupLoot, 10, false)
			obj_player.money -= 80
			obj_player.immunityFrames = 60
			array_push(obj_gameManager.purchased, 2)
			enabled = false
		}
	}
}

var button3 = instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*3, depth-1, obj_button)
with(button3){
	if(array_contains(obj_gameManager.purchased, 3)){
		enabled = false
	}
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$130"
	onClick = function(){
		if(obj_player.money >= 130){
			if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
			audio_play_sound(s_pickupLoot, 10, false)
			obj_player.money -= 130
			obj_player.bulletDmg = 5
			array_push(obj_gameManager.purchased, 3)
			enabled = false
		}
	}
}

var button4 = instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*4, depth-1, obj_button)
with(button4){
	if(array_contains(obj_gameManager.purchased, 4)){
		enabled = false
	}
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$140"
	onClick = function(){
		if(obj_player.money >= 140){
			if(audio_is_playing(s_pickupLoot)){ audio_stop_sound(s_pickupLoot) }
			audio_play_sound(s_pickupLoot, 10, false)
			obj_player.money -= 140
			obj_player.lootMult = 2
			array_push(obj_gameManager.purchased, 4)
			enabled = false
		}
	}
}


xOff = 16*scale

//icons
instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*0, depth-2, obj_shopIcon, {image_xscale : other.scale, image_yscale : other.scale, hint : "Restore Health + More health"})
instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*1, depth-2, obj_shopIcon, {image_xscale : other.scale, image_yscale : other.scale, hint : "Sprint faster"})
instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*2, depth-2, obj_shopIcon, {image_xscale : other.scale, image_yscale : other.scale, hint : "Longer immunity upon taking damage"})
instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*3, depth-2, obj_shopIcon, {image_xscale : other.scale, image_yscale : other.scale, hint : "Spells do more damage"})
instance_create_depth(xPos + xOff, yPos + yOff + buttonSep*4, depth-2, obj_shopIcon, {image_xscale : other.scale, image_yscale : other.scale, hint : "All loot is increased"})




