image_blend = c_gray
if global.telephonecalling = 0 {
audio_sound_pitch(snd_buttonbeep,0.85)
audio_play_sound(snd_buttonbeep,0,0)
global.telephoneorder += 1
if global.telephoneorder = 1 {global.telephonenumber[0] = "2"}
if global.telephoneorder = 2 {global.telephonenumber[1] = "2"}
if global.telephoneorder = 3 {global.telephonenumber[2] = "2"}
if global.telephoneorder = 4 {global.telephonenumber[3] = "2"}
} else { image_blend = c_gray }