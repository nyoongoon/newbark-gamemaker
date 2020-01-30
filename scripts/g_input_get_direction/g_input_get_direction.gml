// Keyboard

if (keyboard_check(vk_nokey))
{
	return e_dir.none;
}
if (keyboard_check(vk_up))
{
	return e_dir.up;
}
if (keyboard_check(vk_right))
{
	return e_dir.right;
}
if (keyboard_check(vk_down))
{
	return e_dir.down;
}
if (keyboard_check(vk_left))
{
	return e_dir.left;
}

// Gamepad
// (WIP using gamepad_* functions)

// Touch
// (WIP using gesture_* functions)
