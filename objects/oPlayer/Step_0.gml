/// @description Handle Player Movement

var dir = g_dir.none;

// Handle turn around delay / cool down
if (turn_around_delay > 0) {
	turn_around_delay--;
	exit;
}

// Move the player
// TODO: lerp function + delta to move N pixels smoothly
if(target_pos_x > x) x += current_speed;
if(target_pos_x < x) x -= current_speed;
if(target_pos_y > y) y += current_speed;
if(target_pos_y < y) y -= current_speed;


// Check if player arrived to destination
if((state == g_state.mv_moving) && (target_pos_x == x && target_pos_y == y))
{
	state = g_state.mv_idle;
	image_speed = 0;
	image_index = 0;
}


// Handle Input: if player finished moving or is idle, then read input
if (state == g_state.mv_idle) {
	current_speed = g_player_walk_speed;
	dir = g_input_get_direction();
	buttons = g_input_get_buttons();
	
	if (buttons[g_button.btn_b] == true)
	{
		current_speed = g_player_running_speed;
	}
	
	var diff_x = g_tile_width;
	var diff_y = g_tile_height;
	
	if (dir != g_dir.none)
	{
		state = g_state.mv_moving;
		image_speed = current_speed;
		
		// turn around detection
		if(move_last_dir != g_dir.none && move_last_dir != dir)
		{
			diff_x = 0;
			diff_y = 0;
			turn_around_delay = g_player_turn_around_delay;
			image_speed = 0;
		}
		move_last_dir = dir;
	}
	
	switch (dir) {
	    case g_dir.up:
			target_pos_y -= diff_y;
	        sprite_index = spr_player_walk_up;
	        break;
	    case g_dir.down:
			target_pos_y += diff_y;
	        sprite_index = spr_player_walk_down;
	        break;
	    case g_dir.right:
			target_pos_x += diff_x;
	        sprite_index = spr_player_walk_right;
	        break;
	    case g_dir.left:
			target_pos_x -= diff_x;
	        sprite_index = spr_player_walk_left;
	        break;
	}
}

// Set the player course


// v2.0: https://www.youtube.com/watch?v=pUvevR16qlU

//if (state == g_state.mv_moving) {
//	walk_anim_time_remaining += delta_time / 1000000;
	
//	 // how far of the animation  are
//	var t = walk_anim_time_remaining / walk_anim_time = 0.5; // time per tile
	
//	if(t >= 1) {
//		// animation is complete
//		walk_anim_time_remaining = 0;
//		t = 1;
//		state = g_state.mv_idle;
//	}
	
//	var delta_x = lerp(x_from, x_to, t);
//	var delta_y = lerp(y_from, y_to, t);
	
//	x = delta_x * g_tile_width;
//	y = delta_y * g_tile_height;
	
//	var current_frame = floor((sprite_frame_count[current_dir] - 1) * t);
//	var current_frames = sprite_frames[current_dir];
	
//	image_index = current_frames[current_frame];
//	sprite_index = sprite[current_dir];
//} else {
//	image_index = 0;
//}
