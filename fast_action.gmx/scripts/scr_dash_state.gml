///scr_dash_state
// Get the input
if (instance_exists(obj_input)){
    var hspd = (obj_input.right_key - obj_input.left_key)*spd;
    var vspd = (obj_input.down_key - obj_input.up_key)*spd;
}

// Get the dir
if (hspd == 0 and vspd == 0){
    image_speed = 0;
    image_index = 0;
} else {
    dir = scr_get_dir(hspd, vspd);
}

// Move
scr_move(4 * hspd, 4 * vspd);

// Create the dash effect
var dash = instance_create(x,y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

