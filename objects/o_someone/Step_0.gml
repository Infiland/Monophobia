if instance_exists(o_player) {
if distance_to_object(o_player) < 6 {
run = 1
sprite_index = s_someonerunning
}
if run = 1 {
if !instance_exists(o_money) {
if global.money = 0 { instance_create_depth(x,y+5,1,o_money) }
}
if x < o_player.x {
x -= 1
}
if x > o_player.x {
x += 1
}
}
}

if x < 0 { instance_destroy() }
if x > room_width { instance_destroy() }