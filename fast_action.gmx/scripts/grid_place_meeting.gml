///grid_place_meeting(x, y)
var xx = argument[0];
var yy = argument[1];

// Remember our position
var xp = x;
var yp = y;

// Update the postion for the bbox calculations
x = xx;
y = yy;

// Check for an x meeting
var x_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) or 
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_WIDTH] != FLOOR);

// Check for y meeting
var y_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) or
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);
                
// Check for centre meeting
var centre_meeting = obj_level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;

// Move back
x = xp;
y = yp;;

// Return true or false
return x_meeting or y_meeting or centre_meeting;
