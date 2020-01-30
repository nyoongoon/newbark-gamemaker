var buttons = [];
buttons[e_btn.btn_a] = false;
buttons[e_btn.btn_b] = false;
buttons[e_btn.btn_x] = false;
buttons[e_btn.btn_y] = false;
buttons[e_btn.btn_select] = false;
buttons[e_btn.btn_start] = false;


if (keyboard_check(vk_nokey))
{
	return buttons;
}

if (keyboard_check(ord("x")) || keyboard_check(ord("X")))
{
	buttons[e_btn.btn_a] = true;
}
if (keyboard_check(ord("z")) || keyboard_check(ord("Z")))
{
	buttons[e_btn.btn_b] = true;
}
if (keyboard_check(ord("q")) || keyboard_check(ord("Q")))
{
	buttons[e_btn.btn_x] = true;
}
if (keyboard_check(ord("w")) || keyboard_check(ord("W")))
{
	buttons[e_btn.btn_y] = true;
}
if (keyboard_check(ord("a")) || keyboard_check(ord("A")))
{
	buttons[e_btn.btn_select] = true;
}
if (keyboard_check(ord("s")) || keyboard_check(ord("S")))
{
	buttons[e_btn.btn_start] = true;
}

return buttons;