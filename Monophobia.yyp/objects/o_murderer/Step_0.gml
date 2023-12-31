if instance_exists(o_player) {
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