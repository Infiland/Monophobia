if faketree = 1 {
	if instance_exists(o_player) {
	if place_meeting(x+5,y+29,o_player) {
	y-= 1 
	}
	}
if y < 140 { 
instance_destroy()	
}
}