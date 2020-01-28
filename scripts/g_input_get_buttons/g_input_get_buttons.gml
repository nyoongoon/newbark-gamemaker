var buttons = [];
buttons[g_button.btn_a] = false;
buttons[g_button.btn_b] = false;
buttons[g_button.btn_x] = false;
buttons[g_button.btn_y] = false;
buttons[g_button.btn_select] = false;
buttons[g_button.btn_start] = false;


if (keyboard_check(vk_nokey))
{
	return buttons;
}

if (keyboard_check(ord("x")) || keyboard_check(ord("X")))
{
	buttons[g_button.btn_a] = true;
}
if (keyboard_check(ord("z")) || keyboard_check(ord("Z")))
{
	buttons[g_button.btn_b] = true;
}
if (keyboard_check(ord("q")) || keyboard_check(ord("Q")))
{
	buttons[g_button.btn_x] = true;
}
if (keyboard_check(ord("w")) || keyboard_check(ord("W")))
{
	buttons[g_button.btn_y] = true;
}
if (keyboard_check(ord("a")) || keyboard_check(ord("A")))
{
	buttons[g_button.btn_select] = true;
}
if (keyboard_check(ord("s")) || keyboard_check(ord("S")))
{
	buttons[g_button.btn_start] = true;
}

return buttons;