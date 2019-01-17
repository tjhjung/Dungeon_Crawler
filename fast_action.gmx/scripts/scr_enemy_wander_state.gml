///scr_enemy_wander_state

// Move to random point
var randx = x + scr_random_point();
var randy = y + scr_random_point();
// If the random point is not floor

while (obj_level.grid[# randx div CELL_WIDTH, randy div CELL_HEIGHT] != FLOOR){
    // Pick a random tile again
    randx = x + scr_random_point();
    randy = y + scr_random_point();
}

if (path_exists(path)){
    get_path_to_point(randx, randy, false);
}


state = scr_choose_state;
