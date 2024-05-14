if instance_exists(o_player) {
if distance_to_object(o_player) < 4 {
dissapearing = 1
}}

if dissapearing = 1 {
	direction = point_direction(x,y,randomlocationx,randomlocationy)
	motion_set(direction,0.1)
	timer -= 1
if timer < 0 {
image_alpha	-= 0.015;	
}
}
if image_alpha < 0 { instance_destroy() }