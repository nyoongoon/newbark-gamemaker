if(argument0.object_index != oPlayer) {
	show_error(
		script_get_name(g_parse_input) +
		" argument must be of type " +
		object_get_name(oPlayer),
		true
	);
}

var running_speed_increase = 0;

with(argument0) {
	state = g_state.mv_idle;
	object_speed = initial_object_speed;
	image_speed = initial_image_speed;
		
	if (keyboard_check(vk_up)) {
		facing_direction = g_dir.up;
		state = g_state.mv_moving;
	}
	if (keyboard_check(vk_right)) {
		facing_direction = g_dir.right;
		state = g_state.mv_moving;
	}
	if (keyboard_check(vk_down)) {
		facing_direction = g_dir.down;
		state = g_state.mv_moving;
	}
	if (keyboard_check(vk_left)) {
		facing_direction = g_dir.left;
		state = g_state.mv_moving;
	}
	if (keyboard_check(vk_shift)) {
		running_speed_increase = 2;
	}
	if (state = g_state.mv_moving) {
		object_speed += running_speed_increase;
		image_speed += running_speed_increase;
	}
	if ((state == g_state.mv_idle) or keyboard_check(vk_nokey)) {
		state = g_state.mv_idle;
		image_speed = 0;
		image_index = 0;
		object_speed = 0;
	}
}

