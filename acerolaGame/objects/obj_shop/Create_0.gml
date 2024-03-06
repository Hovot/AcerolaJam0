/// @description 
scale = 2
xPos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - sprite_get_width(spr_shopMenu)*scale/2
yPos = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 -  sprite_get_height(spr_shopMenu)*scale/2

items = [["Potion", 50], ["Knife", 100], ["Upgrade", 500]]
//create buttons

var yOff = 15*scale
var xOff = 45*scale

var button0 = instance_create_depth(xPos + xOff, yPos + yOff, depth-1, obj_button)
with(button0){
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$50"
	onClick = function(){
		show_debug_message("button")
	}
}


var buttonSep = 45

var button1 = instance_create_depth(xPos + xOff, yPos + yOff + buttonSep, depth-1, obj_button)
with(button1){
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$100"
	onClick = function(){
		show_debug_message("button")
	}
}

var button3 = instance_create_depth(xPos + xOff, yPos + yOff + + buttonSep*2, depth-1, obj_button)
with(button3){
	image_xscale = .5
	baseXScale = .5
	useShader = false
	buttonText = "$20"
	onClick = function(){
		show_debug_message("button")
	}
}
