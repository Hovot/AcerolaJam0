/// @description 
if(alarm_get(0) <= 0){
	hp -= 5
	color = c_red
	alarm_set(0, 30)
	alarm_set(1, 5)
}






