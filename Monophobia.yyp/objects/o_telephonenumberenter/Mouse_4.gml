if global.telephonecalling != 1 {
if global.telephonenumber[0] != "" {

if global.telephonenumber[0] = "6" {
if global.telephonenumber[1] = "9" {
if global.telephonenumber[2] = "6" {
if global.telephonenumber[3] = "9" {
audio_play_sound(snd_6969call,0,0)
}}}}

if global.telephonenumber[0] = "4" {
if global.telephonenumber[1] = "8" {
if global.telephonenumber[2] = "2" {
if global.telephonenumber[3] = "9" {
global.dialmonster = 1
audio_play_sound(snd_4829call,0,0)
}}}}

if global.telephonenumber[0] = "9" {
if global.telephonenumber[1] = "1" {
if global.telephonenumber[2] = "1" {
if global.telephonenumber[3] = "" {
audio_play_sound(snd_911call,0,0)
}}}}
if global.telephonenumber[0] = "2" {
if global.telephonenumber[1] = "0" {
if global.telephonenumber[2] = "0" {
if global.telephonenumber[3] = "3" {
global.dialdev += 1
if global.dialdev = 1 {audio_play_sound(snd_2003call_1,0,0) }
if global.dialdev = 2 {audio_play_sound(snd_2003call_2,0,0) }
if global.dialdev = 3 {audio_play_sound(snd_2003call_3,0,0) }
if global.dialdev = 4 {audio_play_sound(snd_2003call_4,0,0) }
if global.dialdev = 5 {
	audio_play_sound(snd_2003call_5,0,0) 
	global.dialdev = 0
	}
}}}}
if global.telephonenumber[0] = "7" {
if global.telephonenumber[1] = "1" {
if global.telephonenumber[2] = "2" {
if global.telephonenumber[3] = "9" {
if global.dialgirl = 0 {
audio_play_sound(snd_7129call,0,0)
} else { audio_play_sound(snd_ring,0,0) }
}}}}
if global.telephonenumber[0] = "0" {
if global.telephonenumber[1] = "4" {
if global.telephonenumber[2] = "8" {
if global.telephonenumber[3] = "5" {
audio_play_sound(snd_0485call,0,0)	
powermaster = 1
}}}}

if global.telephonenumber[0] = "1" {
if global.telephonenumber[1] = "2" {
if global.telephonenumber[2] = "1" {
if global.telephonenumber[3] = "6" {
audio_play_sound(snd_1216call,0,0)
}}}}

}
if !audio_is_playing(snd_6969call) {
audio_play_sound(snd_ring,0,0)
}
audio_sound_gain(m_gorwancity,0.05,6600)
global.telephonecalling = 1
}