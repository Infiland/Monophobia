if global.talktogirl = 0 {
if room = r_tutorial {
draw_set_font(fnt_pixel)
if global.checkpoint = 0 {
if global.deaths1 > 1 { draw_text(2,2,"HIDE BEHIND\nTREES") }	
}
if global.checkpoint = 1 {
if global.deaths2 > 2 { draw_text(2,2,"STAY ON ROAD") }	
}
}
if global.hiding = 1 {
if instance_place(x,y,o_enemyroad) {
draw_text(3,3,"DON'T MOVE")
}}

if sprite_index != s_playerdead {
if keyboard_check(ord("I")) {
inventoryalpha = 100	
}
draw_set_alpha(inventoryalpha/100)
if global.roadchase = 0 {
if global.gun = 0 {
if global.checkpoint = 0 {
if global.flower = 0 {
if global.money = 0 {
if global.gas = 0 {
draw_text(2,54,"NO ITEMS")
}}}}}}
if global.roadchase = 1 or global.checkpoint = 1 {
draw_sprite(s_key,0,3,58)
}
if global.gun = 1 {
draw_sprite(s_gun,0,23,58)
}
if global.flower = 1 {
draw_sprite(s_flower,0,23,57)
}
if global.money = 1 and global.gas = 0 {
draw_sprite(s_money,0,12,57)
}
if global.gas = 1 {
draw_sprite(s_gas,0,14,55)
}
if global.roadchase = 1 {
draw_sprite(s_key,0,3,58)
}
} else { inventoryalpha = 0 }
}
draw_set_alpha(1)