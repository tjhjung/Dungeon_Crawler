///scr_get_dir();

// Get the input
if (instance_exists(obj_input)){
    var xx = (obj_input.right_key - obj_input.left_key);
    var yy = (obj_input.down_key - obj_input.up_key);
}

dir = point_direction(0, 0, xx, yy) div 90;

return dir;
