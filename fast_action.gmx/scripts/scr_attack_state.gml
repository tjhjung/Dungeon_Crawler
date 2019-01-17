///scr_attack_state
image_speed = .6;
if (attack > 1){
    attack = 0;
}
if (attack == 0){
    switch (dir){
        case 0:
            sprite_index = spr_player_attack_right_1;
            break;
        case 1:
            sprite_index = spr_player_attack_up_1;
            break;
        case 2:
            sprite_index = spr_player_attack_left_1;
            break;
        case 3:
            sprite_index = spr_player_attack_down_1;
            break;
    }
} else if (attack == 1){
    switch (dir){
        case 0:
            sprite_index = spr_player_attack_right_2;
            break;
        case 1:
            sprite_index = spr_player_attack_up_2;
            break;
        case 2:
            sprite_index = spr_player_attack_left_2;
            break;
        case 3:
            sprite_index = spr_player_attack_down_2;
            break;
    }
}

// Create the damage
if (image_index >= 3){
    if (attacked == false){
        instance_create(x, y, obj_damage);
        attacked = true;
    }
}
