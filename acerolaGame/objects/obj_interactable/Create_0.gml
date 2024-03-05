/// @description implement me
desc = "I need a description"
inCircle = false

outline = true

xScale = image_xscale
yScale = image_yscale

uPixelH = shader_get_uniform(sh_outline, "pixelH")
uPixelW = shader_get_uniform(sh_outline, "pixelW")
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0))
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0))
