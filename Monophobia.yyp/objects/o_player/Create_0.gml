playerspeed = 0.3
dead = 0
deadtimer = 100
inventoryalpha = 0
endlessroaddistance = 0
if room != r_tutorial {
x = global.playerx
y= global.playery
}

if os_type = os_android {
instance_create_depth(12,52,-100,o_androidright)
instance_create_depth(-16,52,-100,o_androidleft)
instance_create_depth(-2,52,-100,o_androiddown)
instance_create_depth(-2,38,-100,o_androidup)
instance_create_depth(62,52,-100,o_androidenter)
instance_create_depth(76,52,-100,o_androidinventory)
}

if room = r_gasstation {
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,0.25)
}

if room = r_basement {
var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,0.15)
}

if room = r_theeyeroom {
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,0.4)

var lay_id = layer_get_id("Backgrounds_2");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,c_red)
layer_background_alpha(back_id,0.2)
}