draw_self()
if instance_exists(o_player) {
draw_set_alpha(3/distance_to_object(o_player))
if o_player.sprite_index != s_playerdead {
draw_sprite(s_stateenemyroads,global.hiding,x+3,y+1)
}}
draw_set_alpha(1)