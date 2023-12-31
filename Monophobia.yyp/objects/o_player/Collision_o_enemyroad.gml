if deadtimer = 100 {
audio_stop_all()
global.deaths1 += 1
audio_play_sound(snd_carstop,0,0)
}
sprite_index = s_playerdead
dead = 1
if room = r_city { global.ending = 1 }
global.telephoneorder = 0
global.telephonecalling = 0
global.telephonenumber[0] = ""
global.telephonenumber[1] = ""
global.telephonenumber[2] = ""
global.telephonenumber[3] = ""