///scr_enemy_attack
if (alarm[3] <= 0){
    if (attack == false){
        alarm[5] = room_speed * 3;
    }
    // Move towards the player
    if (instance_exists(obj_player) and path_exists(path)){
        attack = true;
        image_blend = c_red;
        get_path_to_point(obj_player.x, obj_player.y, true);
    }
    if (alarm[5] <= 0){
        state = scr_choose_state;
        image_blend = c_white;
        attack = false;
        alarm[6] = room_speed;
    }
}
