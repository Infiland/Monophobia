if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
global.playery = o_player.y
if room = r_road {
global.playerx = 1
room_goto(r_road2)
}
if room = r_road2 {
global.playerx = 252
room_goto(r_road)
}

}}