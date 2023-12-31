if deadtimer = 100 {
audio_stop_all()
global.deaths2 += 1
global.gas = 0
global.money = 0
audio_play_sound(snd_carstop,0,0)
}
sprite_index = s_playerdead
dead = 1