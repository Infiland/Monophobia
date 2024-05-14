draw_set_font(fnt_pixel)
if instance_exists(o_player) {
if o_player.sprite_index != s_playerdead {
if place_meeting(x,y,o_player) {
if room = r_road {
if global.roadchase = 0 {
draw_text(2,5,"I NEED A KEY")
} else { 
draw_text(3,3,"["+global.textenter+"]")
if keyboard_check_pressed(vk_enter) {
room_goto(r_cityintro)
audio_stop_all()
global.roadchase = 0
global.checkpoint = 1
audio_play_sound(m_gorwancity,0,1)
	}}
}
if room = r_city { 
	if house = 0 {
	if global.gas = 0 { draw_text(2,5,"OUT OF FUEL") } else {
	draw_text(2,3,"DRIVE? ["+global.textenter+"]")
	if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	global.playerx = 43
	global.playery = 67
	room_goto(r_girlhouseintro)
	}
	}}
    if house = 1 {
	global.playerx = 61
	global.playery = 116
	room_goto(r_house)
	audio_stop_all()
	audio_play_sound(m_welcomehome,0,1)
	}
	if house = 2 {
	global.playerx = 30
	global.playery = 2
	room_goto(r_gasstation)
	audio_stop_all()
	audio_play_sound(m_theendoftheroad,0,1)
	}
	if house = 3 {
	global.playerx = 2
	global.playery = 28
	room_goto(r_endlessroad)
	audio_stop_all()
	audio_play_sound(m_theendoftheroad,0,1)
	}
	}
if room = r_house { 
if house = 0 {
	global.playerx = 458
	global.playery = 413
	room_goto(r_city)
	audio_stop_all()
	audio_play_sound(m_gorwancity,0,1)
}
if house = 1 {
	global.playerx = 83
	global.playery = 11
	room_goto(r_basement)
	audio_sound_gain(m_welcomehome,0.5,500)
}
}
if room = r_basement {
	global.playerx = 114
	global.playery = 90
	room_goto(r_house)
	audio_sound_gain(m_welcomehome,1,500)
}
if room = r_gasstation {
if house = 0 {
	global.playerx = 39
	global.playery = 502
	room_goto(r_city)
	audio_stop_all()
	audio_play_sound(m_gorwancity,0,1)
}
if house = 1 {
if global.gas = 0 {
if global.money = 0 { draw_text(2,5,"NO MONEY") } else {
draw_text(3,3,"BUY? ["+global.textenter+"]")
if keyboard_check_pressed(vk_enter) {
global.gas = 1
}}
} else { draw_text(3,3,"GET TO THE\nCAR") }

}
}
if room = r_endlessroad {
	global.playerx = 505
	global.playery = 202
	room_goto(r_city)
	audio_stop_all()
	audio_play_sound(m_gorwancity,0,1)
}

if room = r_girlhouseoutside {
draw_text(3,3,""+global.textenter+"?")
if keyboard_check_pressed(vk_enter) {
if house = 0 {
global.playerx = 122
global.playery = 30
	room_goto(r_girlhouse)
} else {
global.playerx = 256
global.playery = 53
room_goto(r_thewellintro)
global.ending = 4
audio_play_sound(m_thewell,0,1)
}}
}

if room = r_thewell {
if house = 0 {
draw_text(3,3,"OUT OF FUEL")
} else {
draw_text(3,3,"JUMP IN?\n["+global.textenter+"]")	
if keyboard_check_pressed(vk_enter) {
audio_stop_all()
audio_play_sound(snd_carstop,0,0)
room_goto(r_endingroom)
}}
}



if room = r_road2 {
if instance_exists(o_enemyroad){
draw_text(2,2,"HIDE BEHIND\nTREES")
}}

}
}
}