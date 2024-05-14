if place_meeting(x,y,o_player) {
if room = r_road {
if citypaper = 0 {
draw_sprite(s_youarealone64,0,0,0)
}
if citypaper = 1 {
draw_sprite(s_callme_1,0,0,0)
}
}
if room = r_road2 {
draw_sprite(s_donthidefromme64,0,0,0)
}
if room = r_city {
if citypaper = 0 {
draw_sprite(s_gohomenow,0,0,0)
}
}
if room = r_house {
draw_sprite(s_callme_2,0,0,0)	
}
draw_sprite(s_border,0,0,0)
}