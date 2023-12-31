draw_set_font(fnt_pixel)
if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
if place_meeting(x,y,o_player) {
draw_sprite(s_road64,0,0,0)
draw_sprite(s_fog,0,0,0)
draw_sprite(s_border,0,0,0)
if room = r_road2 {
draw_text(2,5,"TOO FAR AWAY")
}
if room = r_city {
if differentroad = 0 {
draw_text(5,5,"NO GOING\nBACK NOW")
}
if differentroad = 1 {
if global.flower = 0 {
if global.gun = 0 {
draw_text(3,5,"I NEED TO GO\nHOME")
}}
if global.flower = 1 {
if global.gun = 0 {
draw_text(3,5,"I NEED TO\nFORGIVE HER")
}}
if global.flower = 0 {
if global.gun = 1 {
draw_text(3,5,"I NEED TO\nKILL HER")
}}

}
}
}

}}