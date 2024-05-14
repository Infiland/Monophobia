if instance_exists(o_player) {
if distance_to_object(o_player) < 32 - (global.deaths2/5) {
	if seen = 0 {
	direction = rand
	speed = 0.02
	} else {
	direction = point_direction(x,y,o_player.x,o_player.y)
	speed = 0.03	
	}
motion_set(direction,speed)
	} else { 
			direction = point_direction(x,y,o_player.x,o_player.y)
motion_set(direction,speed)
		speed = 0 }
if distance_to_object(o_player) < 9 - (global.deaths2/5) { idle = 0 }
if idle = 0 {
sprite_index = s_murdererrunning
speed = 1
direction = point_direction(x,y,o_player.x,o_player.y)
motion_set(direction,speed)
} else {
}
if o_player.sprite_index = s_playerdead {
sprite_index = s_murdereridle
speed = 0
}
}

if !collision_line(x,y,o_player.x,o_player.y,o_invisiblebarrier,0,0) {
seen = 1
} else { seen = 0 }
if global.hiding = 1 { seen = 0 }