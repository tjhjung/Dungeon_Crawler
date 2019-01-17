///get_path_to_point(x, y, att)
var xx = (argument[0] div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2;
var yy = (argument[1] div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2;
var att = argument[2];

if (mp_grid_path(obj_level.grid_path, path, x, y, xx, yy, true) and att == false) {
    path_start(path, spd, 0, false);
} else if (mp_grid_path(obj_level.grid_path, path, x, y, xx, yy, true) and att == true) {
    path_start(path, att_spd, 0, false);
}
