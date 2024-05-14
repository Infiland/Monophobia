if !instance_exists(o_enemyroad) {
if place_meeting(x,y+1,o_player) {
draw_text(3,3,"CALL? ["+global.textenter+"]")
if keyboard_check_pressed(vk_enter) {
room_goto(r_telephonebooth)	
audio_sound_gain(m_gorwancity,0.5,500)
}}}