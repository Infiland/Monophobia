image_index = global.gun
if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
if place_meeting(x,y+1,o_player) {
draw_sprite(s_picture64,global.gun,0,0)
draw_sprite(s_border,0,0,0)
}}}