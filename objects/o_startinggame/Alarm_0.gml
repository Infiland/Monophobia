if room = r_startinggame {
if chanceforcutscene = 5 {
room_goto(r_roadcutscene)
exit
}}
audio_play_sound(m_silentcalling,0,1)
room_goto(r_tutorial)