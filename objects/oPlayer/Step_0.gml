/// @description Parse input and change sprites accordingly

g_parse_input(id)

if (state == g_state.mv_moving) {
	switch (facing_direction) {
	    case g_dir.up:
			y -= object_speed;
			sprite_index = spr_player_walk_up;
			break;
	    case g_dir.right:
			x += object_speed;
			sprite_index = spr_player_walk_right;
			break;
	    case g_dir.down:
			y += object_speed;
			sprite_index = spr_player_walk_down;
			break;
	    case g_dir.left:
			x -= object_speed;
			sprite_index = spr_player_walk_left;
	        break;
	}
}
