linesalpha = 0
textoffset = 0
change = 0
option = 0
realoption = 0
controlscheck = 0
controlsoffset = 0
if !audio_is_playing(m_monophobia) {
audio_play_sound(m_monophobia,0,1)
}

global.textenter = "ENTER"

if os_type = os_android {
global.textenter = "USE"	
}

for(var i =1;i<=7;i++) {
global.endingnum[i] = 0
}

loadending()