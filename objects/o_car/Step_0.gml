if !place_meeting(x+10,y,o_player) {
x += 1
if !audio_is_playing(snd_car) {
audio_play_sound(snd_car,0,0)
}
image_speed = 1
} else { image_speed = 0 
if global.carjumpscare = 0 {
instance_create_layer(0,0,"CarJumpscare",o_car64)
global.carjumpscare = 1
audio_stop_sound(snd_car)
}
	}
if x > room_width+10 { instance_destroy()
if !audio_is_playing(m_wind) {
audio_play_sound(m_wind,0,1)
	}}
audio_sound_gain(snd_car,5/distance_to_object(o_player),1)