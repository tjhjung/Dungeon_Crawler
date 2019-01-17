///scr_main_state()

image_speed = 0.4;

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

// Control the sprites
switch (dir){
    case 0:
        sprite_index = spr_player_right;
        break;
    case 1:
        sprite_index = spr_player_up;
        break;
    case 2:
        sprite_index = spr_player_left;
        break;
    case 3:
        sprite_index = spr_player_down;
        break;
}



// Check if attacking
if(obj_input.attack_key){
    image_index = 0;
    state = scr_attack_state;
}

// Check if dashing
if(obj_input.dash_key and obj_player_health.stamin >= 5){
    obj_player_health.stamin -= 5;
    alarm[3] = room_speed;
    state = scr_dash_state;
    alarm[2] = room_speed/7;
}

// Move
scr_move(hspd, vspd);


