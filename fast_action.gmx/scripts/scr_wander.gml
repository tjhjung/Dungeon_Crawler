///scr_wander()
var randx = x + choose(random_range(-200, -100), random_range(100, 200));
var randy = y + choose(random_range(-200, -100), random_range(100, 200));

get_path_to_point(randx, randy);

