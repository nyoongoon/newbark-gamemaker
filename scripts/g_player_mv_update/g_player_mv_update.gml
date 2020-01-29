/// @description Handle Player Movement

// Handle turn around delay / cool down
if (mv_dir_change_delay > 0)
{
	mv_dir_change_delay--;
	return;
}

// Move the player
if(mv_target_x > x) x += mv_speed;
if(mv_target_x < x) x -= mv_speed;
if(mv_target_y > y) y += mv_speed;
if(mv_target_y < y) y -= mv_speed;

// Check if player arrived to destination
if (mv_target_x == x && mv_target_y == y)
{
	mv_state = g_state.mv_idle;
	
	if(mv_last_collision == 0)
	{
		mv_last_collision = 0;
		image_speed = 0;
		image_index = 0;
	}
}

// Finish if state is not idle
if (mv_state != g_state.mv_idle)
{
	return;
}

// Handle Input: if player finished moving or is idle, then read input
//	and reset variables
mv_speed = g_player_walk_speed;
mv_dir = g_input_get_direction();

// Finish if no direction pressed
if (mv_dir == g_dir.none)
{
	mv_last_collision = 0;
	return;
}

// Change state to moving
mv_state = g_state.mv_moving;

// Detect speed modifier buttons
var pressed_buttons = g_input_get_buttons();
if (pressed_buttons[g_button.btn_b] == true) mv_speed = g_player_running_speed;
	
var diff_x = mv_offsets[mv_dir, g_vector.xx];
var diff_y = mv_offsets[mv_dir, g_vector.yy];
		
// Dir change / turn around detection
if ((mv_dir_last != g_dir.none) && (mv_dir_last != mv_dir))
{
	diff_x = 0;
	diff_y = 0;
	mv_speed = 0;
	mv_dir_change_delay = g_player_dir_change_delay;
}

// Change sprite and target
mv_dir_last = mv_dir;

// Detect collision
mv_last_collision = g_tile_collision(mv_target_x + diff_x, mv_target_y + diff_y, mv_collisions_layer);
if (mv_last_collision > 0) {
	if !(audio_is_playing(mv_collisions_sound))
	{
		if (mv_collision_sound_delay > 0) {
			mv_collision_sound_delay--;
		} else {
			audio_play_sound(mv_collisions_sound, 1, false);
			mv_collision_sound_delay = mv_collision_sound_delay_initial;
		}
	}
	image_speed = mv_speed_collision;
	return;
}

mv_target_x += diff_x;
mv_target_y += diff_y;

sprite_index = mv_sprites[mv_dir];
image_speed = mv_speed;
