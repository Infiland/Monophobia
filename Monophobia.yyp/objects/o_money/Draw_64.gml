draw_set_font(fnt_pixel)
if instance_exists(o_player) {
if place_meeting(x,y,o_player) {
draw_text(3,3,"PICK? ["+global.textenter+"]")
if keyboard_check_pressed(vk_enter) {
instance_destroy()
global.money = 1	
}
}
}