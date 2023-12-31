draw_set_font(fnt_pixel)
if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
if place_meeting(x,y,o_player) {
draw_text(3,3,"PICK? [ENTER]")
if keyboard_check_pressed(vk_enter) {
global.roadchase = 1
audio_stop_all()
audio_play_sound(m_chasescene,0,1)
instance_create_layer(10,58,"monster",o_enemyroad)
instance_destroy()
}
}

}}