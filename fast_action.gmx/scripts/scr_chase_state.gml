///scr_chase_state()
// Move towards the player
if (instance_exists(obj_player) and path_exists(path)){
    get_path_to_point(obj_player.x, obj_player.y, false);
}
state = scr_choose_state;
