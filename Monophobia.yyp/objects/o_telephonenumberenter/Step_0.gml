if global.telephonenumber[0] = "" {
image_blend = c_gray
} else { image_blend = c_white }

if global.telephonecalling = 1 { 
	image_blend = c_gray 

if !audio_is_playing(snd_ring) and !audio_is_playing(snd_6969call) and !audio_is_playing(snd_4829call) and !audio_is_playing(snd_911call) and !audio_is_playing(snd_2003call_1) and !audio_is_playing(snd_2003call_2) and !audio_is_playing(snd_2003call_3) and !audio_is_playing(snd_2003call_4) and !audio_is_playing(snd_2003call_5) and !audio_is_playing(snd_7129call) and !audio_is_playing(snd_0485call) {
image_blend = c_white
global.telephonecalling = 0
audio_sound_gain(m_gorwancity,0.5,3000)
if global.telephonenumber[0] = "9" {
if global.telephonenumber[1] = "1" {
if global.telephonenumber[2] = "1" {
if global.telephonenumber[3] = "" {
audio_sound_gain(m_gorwancity,0,6600)
instance_create_depth(0,0,-100,o_logointro)
}}}}	

if global.telephonenumber[0] = "4" {
if global.telephonenumber[1] = "8" {
if global.telephonenumber[2] = "2" {
if global.telephonenumber[3] = "9" {
	global.playerx = 356
	global.playery = 410
	room_goto(r_city)
	instance_create_depth(356,427,-100,o_enemyroad)
global.telephonenumber[0] = ""
global.telephonenumber[1] = ""
global.telephonenumber[2] = ""
global.telephonenumber[3] = ""
}}}}

if global.telephonenumber[0] = "7" {
if global.telephonenumber[1] = "1" {
if global.telephonenumber[2] = "2" {
if global.telephonenumber[3] = "9" {
global.dialgirl = 1
}}}}
if powermaster = 1 {
instance_create_layer(0,0,"Instances_1",o_powermaster)
powermaster = 0	
}
}

	}
	
if instance_exists(o_logointro) { global.telephonecalling = 1 }