/// @description Insert description here
// You can write your code in this editor

state = g_state.mv_idle;

x_pos = x div g_tile_width;
y_pos = y div g_tile_height;

x_from = x_pos;
y_from = y_pos;

x_to = x_pos;
y_to = y_pos;

walk_anim_time = 0.5; // time per tile
walk_anim_time_remaining = 0;

image_speed = 0;

sprite_frames[g_dir.up] = [0, 1, 2, 3];
sprite_frames[g_dir.right] = [0, 1];
sprite_frames[g_dir.down] = [0, 1, 2, 3];
sprite_frames[g_dir.left] = [0, 1];

sprite[g_dir.up] = spr_player_walk_up;
sprite[g_dir.right] = spr_player_walk_right;
sprite[g_dir.down] = spr_player_walk_down;
sprite[g_dir.left] = spr_player_walk_left;

sprite_frame_count[g_dir.up] = 4;
sprite_frame_count[g_dir.right] = 2;
sprite_frame_count[g_dir.down] = 4;
sprite_frame_count[g_dir.left] = 2;
