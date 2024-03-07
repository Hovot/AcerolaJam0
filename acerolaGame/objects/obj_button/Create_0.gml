/// @description 

outline = false
useShader = true

uPixelH = shader_get_uniform(sh_outline, "pixelH")
uPixelW = shader_get_uniform(sh_outline, "pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0))


buttonText = "Play Gamessssssssssssss!"
shrinkVal = .05

baseXScale = image_xscale

image_yscale = 1 //hopefully I wont want to change this later haha

enabled = true

onClick = function(){
	show_debug_message("implement me")
}