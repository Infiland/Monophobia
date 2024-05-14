image_blend = c_gray
if global.telephonecalling = 0 {
audio_sound_pitch(snd_buttonbeep,1.25)
audio_play_sound(snd_buttonbeep,0,0)
if global.telephoneorder = 1 {global.telephonenumber[0] = ""}
if global.telephoneorder = 2 {global.telephonenumber[1] = ""}
if global.telephoneorder = 3 {global.telephonenumber[2] = ""}
if global.telephoneorder = 4 {global.telephonenumber[3] = ""}
global.telephoneorder -= 1
}
if global.telephoneorder < 0 { 
	global.playerx = 356
	global.playery = 410
	room_goto(r_city)
	audio_sound_gain(m_gorwancity,1,500)
global.telephoneorder = 0
global.telephonecalling = 0
global.telephonenumber[0] = ""
global.telephonenumber[1] = ""
global.telephonenumber[2] = ""
global.telephonenumber[3] = ""
}
if global.telephoneorder > 4 { global.telephoneorder = 4 }