/// @description Parse input and change sprites accordingly

if (state == g_state.mv_moving) {
	walk_anim_time_remaining += delta_time / 1000000;
	
	 // how far of the animation  are
	var t = walk_anim_time_remaining / walk_anim_time = 0.5; // time per tile
	
	if(t >= 1) {
		// animation is complete
		walk_anim_time_remaining = 0;
		t = 1;
		state = g_state.mv_idle;
	}
	
	var delta_x = lerp(x_from, x_to, t);
	var delta_y = lerp(y_from, y_to, t);
	
	x = delta_x * g_tile_width;
	y = delta_y * g_tile_height;
	
	var current_frame = floor((sprite_frame_count[current_dir] - 1) * t);
	var current_frames = sprite_frames[current_dir];
	
	image_index = current_frames[current_frame];
	sprite_index = sprite[current_dir];
} else {
	image_index = 0;
}

//g_parse_input(id)

//if (state == g_state.mv_moving) {
//	switch (facing_direction) {
//	    case g_dir.up:
//			y -= object_speed;
//			sprite_index = spr_player_walk_up;
//			break;
//	    case g_dir.right:
//			x += object_speed;
//			sprite_index = spr_player_walk_right;
//			break;
//	    case g_dir.down:
//			y += object_speed;
//			sprite_index = spr_player_walk_down;
//			break;
//	    case g_dir.left:
//			x -= object_speed;
//			sprite_index = spr_player_walk_left;
//	        break;
//	}
//}
