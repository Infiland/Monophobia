key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))


if sprite_index != s_playerdead {
if !key_right and !key_left and !key_up and !key_down { sprite_index = s_playeridle }

if global.talktogirl = 0 {
if !instance_exists(o_car64) {
scr_moving()
}
} else { y = lerp(y,31,0.1)
	x = lerp(x,31,0.1)
}
if key_right or key_left { sprite_index = s_playerrunning }
if key_up or key_down { sprite_index = s_playerrunningup }
}

if room = r_endlessroad {
var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,((endlessroaddistance)/100)*3)
if x > 192 {
x -= 64	
endlessroaddistance += 1
if endlessroaddistance = 11 {
	audio_stop_all()
	global.ending = 3
	audio_play_sound(m_DRINK,0,1)
	room_goto(r_theeyeroomintro)
	}
}
if endlessroaddistance > 0 {
if x < 64 {
endlessroaddistance -= 1
x += 64
}
}
}

if room != r_tutorial {
if x > room_width {
scr_collision()	
}
if y > room_height {
scr_collision()	
}
if y < 0 {
scr_collision()	
}
if x < 0 {
scr_collision()	
}
}
	
global.hiding = 0
if instance_exists(o_tree) {
if sprite_index = s_playeridle {
if place_meeting(x,y+3,o_tree) {
global.hiding = 1
}}}

if debug_mode = true {
if keyboard_check_pressed(ord("N")) {
room_goto_next()
}
}

if dead = 1 {
deadtimer -= 1
if deadtimer < 0 {
if global.ending = 0 {
global.carjumpscare = 0
global.roadchase = 0
global.playerx = 0
global.playery = 0
global.hiding = 0
audio_play_sound(m_silentcalling,0,1)
room_goto(r_tutorial)
}
if global.ending = 1 {
room_goto(r_endingroom)
}
}
}

if !keyboard_check(ord("I")) {
inventoryalpha -= 1.2
}