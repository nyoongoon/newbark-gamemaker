function g_player_mv_init() {
	// Built-in vars
	image_speed = 0;
	image_index = 0;
	sprite_index = spr_player_walk_down;

	// Movement vars
	mv_state = e_move_state.idle;
	mv_target_x = x;
	mv_target_y = y;
	mv_speed = g_player_walk_speed;
	mv_image_speed = g_player_walk_image_speed;
	mv_speed_collision = 0.85;
	mv_dir = e_dir.none;
	mv_dir_last = e_dir.down;
	mv_dir_change_delay = 0;


	// Sprites
	mv_sprites = [];
	mv_sprites[e_dir.up] = spr_player_walk_up;
	mv_sprites[e_dir.right] = spr_player_walk_right;
	mv_sprites[e_dir.down] = spr_player_walk_down;
	mv_sprites[e_dir.left] = spr_player_walk_left;


	// x/y offsets
	mv_offsets = [];
	mv_offsets[e_dir.up, e_vector.vx] = 0;
	mv_offsets[e_dir.up, e_vector.vy] = -g_tile_height;

	mv_offsets[e_dir.right, e_vector.vx] = g_tile_width;
	mv_offsets[e_dir.right, e_vector.vy] = 0;

	mv_offsets[e_dir.down, e_vector.vx] = 0;
	mv_offsets[e_dir.down, e_vector.vy] = g_tile_height;

	mv_offsets[e_dir.left, e_vector.vx] = -g_tile_width;
	mv_offsets[e_dir.left, e_vector.vy] = 0;

	// collisions
	mv_collisions_layer = "collisions";
	mv_collisions_sound = sfx_collision;
	mv_collision_sound_delay_initial = 3;
	mv_collision_sound_delay = mv_collision_sound_delay_initial;
	mv_last_collision = 0;




}
