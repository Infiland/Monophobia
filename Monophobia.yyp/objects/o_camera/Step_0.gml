if (follow != noone) {
x = follow.x
y = follow.y
}
if x < 32 { x = 32 }
if y < 32 { y = 32 }
if x > room_width-32 { x = room_width-32 }
if y > room_height-32 { y = room_height-32 }
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)
var pm = matrix_build_projection_ortho(width,height,1,10000)
camera_set_proj_mat(camera,pm)