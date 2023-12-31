if instance_exists(o_player) {
var dir = point_direction(x,y,o_player.x,o_player.y)


var dir2 = angle_difference(dir,image_angle)
image_angle += dir2 * (0.03 - (speed/500))
direction = image_angle
}

if evil = 0 { image_index = 0 } else {
	image_index = 1
}

if speed > 4 { speed = 4 }

if seen = 0 {
if distance_to_object(o_player) < 32 {	
seen = 1
alarm[0] = 400
}
speed = 0
}