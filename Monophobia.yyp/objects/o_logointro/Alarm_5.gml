if room = r_logo {
room_goto(r_tutorial)
audio_play_sound(m_silentcalling,0,1)
}
if room = r_tutorial {
if global.checkpoint = 0 {
global.playerx = 30
global.playery = 2
room_goto(r_road)
audio_play_sound(m_wind,0,1)
}
if global.checkpoint = 1 {
global.playerx = 15
global.playery = 119
room_goto(r_city)
audio_play_sound(m_gorwancity,0,1)
}
}
if room = r_cityintro {
global.playerx = 15
global.playery = 119
room_goto(r_city)
}

if room = r_telephonebooth {
global.ending = 3
room_goto(r_endingroom)	
}

if room = r_girlhouse {
room_goto(r_endingroom)	
}