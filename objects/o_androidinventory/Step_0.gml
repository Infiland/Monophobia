if press = 1 {
keyboard_key_press(btn)
alpha = 0.5
} else {
keyboard_key_release(btn)
alpha = 0.2
}

if instance_exists(o_camera) {
x = o_camera.x-32 + xx
y = o_camera.y-32 + yy
}