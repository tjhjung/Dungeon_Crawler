///scr_find_player()

if(instance_exists(obj_player)){
    var dis = point_distance(obj_player.x, obj_player.y, x, y);
    if (dis <= sight){
        state = scr_chase_state;
    } else if (state = scr_chase_state){
        state = scr_choose_state;
    }
    if (dis <= attack_len and alarm[6] <= 0 and irandom_range(0, ran_att) == 1){
        path_end();
        alarm[3] = room_speed * 2;
        alarm[4] = 10;
        image_blend = c_red;
        state = scr_enemy_attack;
    }
}

