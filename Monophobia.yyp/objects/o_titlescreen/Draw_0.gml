draw_set_alpha(linesalpha*2)
draw_sprite(s_controls,0,64+controlsoffset, 20)
draw_set_halign(fa_center)
draw_set_font(fnt_pixel)
draw_text(32 + controlsoffset,26,"START")
if os_type != os_android {
draw_text(32 + controlsoffset,35,"CONTROLS")
draw_text(32 +controlsoffset,44,"EXIT")
}

//draw_text(5,55,"By Infiland")
for(var i =1;i<=7;i++) {
draw_set_color(c_dkgray)
if global.endingnum[i] = 1 {
if i = 1 ||  i = 2 ||  i = 3 || i = 4 { draw_set_color(c_red) }
if i = 5 || i = 6 { draw_set_color(c_yellow) }
if i = 7 { draw_set_color(c_lime) }
}
draw_text(0+ controlsoffset+(i*8),55,i)
}
draw_set_color(c_white)
draw_set_alpha(1)
draw_rectangle_color(-1,0,63,17,c_black,c_black,c_black,c_black,c_black)
draw_self()
draw_set_alpha(linesalpha)
draw_line_width(-1, 5, 63, 5, 1);
draw_line_width(-1, 17, 63, 17, 1);
realoption = lerp(realoption,option,0.7)
draw_rectangle((6+textoffset)+ controlsoffset,(27+(9*realoption)),(57-textoffset)+ controlsoffset,34+(9*realoption),c_white)