if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
if place_meeting(x,y+1,o_player) {
if room = r_road or room = r_road2 {draw_sprite(s_sign64_1,0,0,0)}
if room = r_city {draw_sprite(s_sign64_2,0,0,0)}
draw_sprite_ext(s_fog,0,0,0,1,1,0,c_white,0.5)
draw_sprite(s_border,0,0,0)
}}}