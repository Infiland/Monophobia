y = lerp(y,7,0.08)
if y > 6 {
	if linesalpha < 0.5 {
	linesalpha += 0.005
	}
	}

if change = 0 {
textoffset += 0.015
if textoffset > 3.5 {
change = 1	
}} else {
textoffset -= 0.015
if textoffset < -0.5 {
change = 0
}}
if controlscheck = 0 {
if option != 0 {
if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
option -= 1	
}}
if option != 2 {
if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) {
option += 1	
}}}
if keyboard_check_pressed(vk_escape) { controlscheck = 0 }
if controlscheck = 0 { controlsoffset = lerp(controlsoffset,0,0.1) } else { controlsoffset = lerp(controlsoffset,-64,0.1)}
if !keyboard_check(vk_alt) {
if keyboard_check_pressed(vk_enter) {
if linesalpha > 0.2 {
switch(option) {
case(0):
audio_stop_sound(m_monophobia)
draw_set_halign(fa_left)
draw_set_alpha(1)
room_goto(r_startinggame)
break;
case(1):
if controlscheck = 0 { controlscheck = 1 } else { controlscheck = 0 }
break;
case(2):
game_end();
break;
}}}}