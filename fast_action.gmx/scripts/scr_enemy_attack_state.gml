///scr_enemy_attack_state
path_end();
alarm[3] = room_speed * irandom_range(2,3);
alarm[4] = 5;
image_blend = c_red;
state = scr_enemy_attack;
