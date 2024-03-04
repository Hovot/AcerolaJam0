/// @description 

effect = fx_create("_filter_twirl_distort")
fx_set_parameter(effect, "g_DistortRadius", 2)
fx_set_single_layer(effect, true)
layer_set_fx("AdLayer", effect)

angle = 0

startSuck = false

suck = function(time){
	alarm_set(0, time)
}