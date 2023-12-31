function scr_moving(){
if key_right { x += playerspeed
if place_meeting(x,y,o_invisiblebarrier) {
x -= playerspeed
}}
if key_left { x -= playerspeed
if place_meeting(x,y,o_invisiblebarrier) {
x += playerspeed
}}
if key_up { y -= playerspeed
if place_meeting(x,y,o_invisiblebarrier) {
y += playerspeed
}}
if key_down { y += playerspeed
if place_meeting(x,y,o_invisiblebarrier) {
y -= playerspeed
}}
}