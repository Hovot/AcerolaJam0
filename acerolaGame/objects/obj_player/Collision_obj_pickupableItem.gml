/// @description 

show_debug_message("PICKED UP")

if(other.sprite_index == spr_loot){
	money++
}

with(other){
	instance_destroy()
}



