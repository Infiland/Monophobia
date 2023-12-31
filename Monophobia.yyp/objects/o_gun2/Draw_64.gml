if place_meeting(x,y,o_player) {
if kill = 0 {
draw_text(3,3,"KILL [ENTER]")
if keyboard_check_pressed(vk_enter) {
instance_create_layer(x,y,"Barrier",o_bullet)	
kill = 1
}}}