if global.talktogirl = 1 {
if global.ending = 0 {
if !audio_is_playing(snd_leftalone_1) or !audio_is_playing(snd_leftalone_2) or !audio_is_playing(snd_leftalone_3) or !audio_is_playing(snd_killher) or !audio_is_playing(snd_loved) {
if global.gun = 0 {
if global.flower = 0 and global.dialgirl = 0 {
audio_play_sound(snd_leftalone_1,0,0)
global.ending = 2
}
if global.flower = 0 and global.dialgirl = 1 {
audio_play_sound(snd_leftalone_2,0,0)
global.ending = 2
}
if global.flower = 1 and global.dialgirl = 0 {
audio_play_sound(snd_leftalone_3,0,0)
global.ending = 2
}
if global.flower = 1 and global.dialgirl = 1 {
audio_play_sound(snd_loved,0,0)
global.ending = 7
}
} else { audio_play_sound(snd_killher,0,0)
global.ending = 5
	}
}}

timer += 1
if global.ending = 7 {
if timer = 1500 {
if global.flower = 1 {
instance_create_layer(19,33,"Barrier",o_flower)	
}}}
if global.ending = 2 {
if timer = 1260 {
if global.flower = 1 {
instance_create_layer(19,33,"Barrier",o_flower)	
}}}
if global.ending = 5 {
if timer = 1450 {
if global.gun = 1 {
instance_create_layer(30,35,"Barrier",o_gun2)	
}}}

if global.ending = 2 {
if !audio_is_playing(snd_leftalone_1) and !audio_is_playing(snd_leftalone_2) and !audio_is_playing(snd_leftalone_3) {
room_goto(r_endingroom)
}}
if global.ending = 7 {
if !audio_is_playing(snd_loved) {
audio_play_sound(m_goodending,0,0)
room_goto(r_endingroom)
}}}