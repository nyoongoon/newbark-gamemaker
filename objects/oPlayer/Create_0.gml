/// @description Player init

state = g_state.mv_idle;

target_pos_y = x;
target_pos_x = y;
current_speed = g_player_walk_speed;

move_last_dir = g_dir.down;
turn_around_delay = 0;

image_speed = 0;
image_index = 0;
