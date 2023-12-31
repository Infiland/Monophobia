if instance_exists(o_player) {
var pointdir = point_direction(x,y,o_player.x+2,o_player.y+4)
accuracy += 1
realpointdir = lerp(realpointdir,pointdir,0.15)
lookingat = pointdir
if accuracy < 2000 + random_range(1,2000) {
rotation += (sin(degtorad(realpointdir - rotation * speed)))
} else { rotation = pointdir }
direction = rotation
//direction = lerp(direction,point_direction(x,y,o_player.x+2,o_player.y+4),0.1)
if speed < 4 {
speed += 0.0008
}
}
if lookingat > 0 { image_index = 0 }
if lookingat > 45 { image_index = 1 }
if lookingat > 90 { image_index = 2 }
if lookingat > 135 { image_index = 3 }
if lookingat > 180 { image_index = 4 }
if lookingat > 225 { image_index = 5 }
if lookingat > 270 { image_index = 6 }
if lookingat > 315 { image_index = 7 }