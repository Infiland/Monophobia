if instance_exists(o_player) {
if global.hiding = 0 {
if distance_to_object(o_player) < (160 - global.deaths1*3) {
direction = point_direction(x,y,o_player.x,o_player.y)
if global.deaths1 < 20 {
motion_set(direction,0.38 - (global.deaths1/60) )
}}
if global.deaths1 > 19 {
motion_set(direction,0.1)
}
} else {
	direction = point_direction(x,y,randomlocationx,randomlocationy)
	if collision_line(x,y,randomlocationx,randomlocationy,o_player,false,true) {
randomlocationx = random_range(0,256)
randomlocationy = random_range(0,256)	
	}
	motion_set(direction,0.2)
}}