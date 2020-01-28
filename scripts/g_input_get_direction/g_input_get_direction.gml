// Keyboard

if (keyboard_check(vk_nokey))
{
	return g_dir.none;
}
if (keyboard_check(vk_up))
{
	return g_dir.up;
}
if (keyboard_check(vk_right))
{
	return g_dir.right;
}
if (keyboard_check(vk_down))
{
	return g_dir.down;
}
if (keyboard_check(vk_left))
{
	return g_dir.left;
}

// Gamepad
// (WIP using gamepad_* functions)

// Touch
// (WIP using gesture_* functions)
