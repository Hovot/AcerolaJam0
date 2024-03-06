/// @description 
image_xscale = 8
image_yscale = 8
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - sprite_width/2
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - sprite_height/2


image_index = level


//create buttons

var yOff = 28*image_yscale
var xOff = 9*image_xscale

var button0 = instance_create_depth(x + xOff + sprite_get_width(spr_button)/2, y + yOff, depth-1, obj_button)
with(button0){
	useShader = false
	buttonText = "Continue"
	onClick = function(){
		with(obj_gameManager){unPause()}
	}
}


var buttonSep = 12*image_xscale

var button1 = instance_create_depth(x + xOff + sprite_get_width(spr_button)/2 + buttonSep, y + yOff, depth-1, obj_button)
with(button1){
	useShader = false
	buttonText = "Options"
	onClick = function(){
		show_debug_message("I menu")
	}
}

var button3 = instance_create_depth(x + xOff + sprite_get_width(spr_button)/2 + buttonSep*3, y + yOff, depth-1, obj_button)
with(button3){
	useShader = false
	buttonText = "Quit"
	onClick = function(){
		game_end(0)
	}
}
