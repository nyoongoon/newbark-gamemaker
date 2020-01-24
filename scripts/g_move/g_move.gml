var dir = argument0;
var dx = 0;
var dy = 0;

switch (dir) {
    case g_dir.up:
		dx = 0;
		dy = -1;
        break;
    case g_dir.right:
		dx = 1;
		dy = 0;
        break;
    case g_dir.down:
		dx = 0;
		dy = 1;
        break;
    case g_dir.left:
		dx = -1;
		dy = 0;
        break;
    default:
		dx = 0;
		dy = 0;
        dir = noone
        break;
}

if ((dir != noone) and (state == g_state.mv_idle)) {
	x_from = x_pos;
	y_from = y_pos;

	x_to = x_pos + dx;
	y_to = y_pos + dy;
	
	x_pos = x_to;
	y_pos = y_to;
	
	state = g_state.mv_moving;
	current_dir = dir;
}