///scr_choose_state
if (alarm[2] <= 0){
    state = choose(scr_idle_state, scr_enemy_wander_state);
    alarm[2] = room_speed * random_range(1, 3);
}

scr_find_player();

