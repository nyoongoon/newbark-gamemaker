/// @description Handle Player Movement

// v3.0: https://www.youtube.com/watch?v=bwP4Mxb3vJA

// 0. Local vars
var dir = g_dir.none;

if (move_delay > 0) {
	move_delay--;
	exit;
}

// 1. Move the player
if(target_pos_x > x) { x += move_speed; show_debug_message("x+4 = " + string(x)); }
if(target_pos_x < x) { x -= move_speed; show_debug_message("x-4 = " + string(x)); }
if(target_pos_y > y) { y += move_speed; show_debug_message("y+4 = " + string(y)); }
if(target_pos_y < y) { y -= move_speed; show_debug_message("y-4 = " + string(y)); }


// 2. Check if arrived to destination
if((state == g_state.mv_moving) && (target_pos_x == x && target_pos_y == y))
{
	show_debug_message("arrived!!");
	state = g_state.mv_idle;
	image_speed = 0;
	image_index = 0;
}


// 3. Handle Input: if player moving state finished, then read input
if (state == g_state.mv_idle) {
	dir = g_parse_input();
	var diff_x = g_tile_width;
	var diff_y = g_tile_height;
	
	if (dir != g_dir.none)
	{
		state = g_state.mv_moving;
		image_speed = move_speed;
		
		// turn around detect
		if(move_last_dir != g_dir.none && move_last_dir != dir)
		{
			show_debug_message("BLABLA1 TURN AROUND");
			diff_x = 0;
			diff_y = 0;
			move_delay = 5; // 5 cycles
			image_speed = 0;
			// TODO: speed buffer on button press to turn around without moving, save last_dir to compare
		}
		move_last_dir = dir;
	}
	
	switch (dir) {
	    case g_dir.up:
			show_debug_message("BLABLA1 up");
			//show_message("BLABLA2 up");
			target_pos_y -= diff_y;
	        sprite_index = spr_player_walk_up;
	        break;
	    case g_dir.down:
			show_debug_message("BLABLA1 down");
			//show_message("BLABLA2 down");
			target_pos_y += diff_y;
	        sprite_index = spr_player_walk_down;
	        break;
	    case g_dir.right:
			show_debug_message("BLABLA1 right");
			//show_message("BLABLA2 right");
			target_pos_x += diff_x;
	        sprite_index = spr_player_walk_right;
	        break;
	    case g_dir.left:
			show_debug_message("BLABLA1 left");
			//show_message("BLABLA2 left");
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


/// v1.0:

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
