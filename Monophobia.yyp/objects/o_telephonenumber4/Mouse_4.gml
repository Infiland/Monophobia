image_blend = c_gray
if global.telephonecalling = 0 {
audio_sound_pitch(snd_buttonbeep,0.95)
audio_play_sound(snd_buttonbeep,0,0)
global.telephoneorder += 1
if global.telephoneorder = 1 {global.telephonenumber[0] = "4"}
if global.telephoneorder = 2 {global.telephonenumber[1] = "4"}
if global.telephoneorder = 3 {global.telephonenumber[2] = "4"}
if global.telephoneorder = 4 {global.telephonenumber[3] = "4"}
}