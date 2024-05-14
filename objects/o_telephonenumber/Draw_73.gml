draw_set_font(fnt_pixel)
draw_set_color(c_white)
if !instance_exists(o_powermaster) {
draw_text(17,0,global.telephonenumber[0]+" "+global.telephonenumber[1]+" "+global.telephonenumber[2]+" "+global.telephonenumber[3])
}