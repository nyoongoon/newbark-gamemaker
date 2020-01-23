enum g_state {
	// ui states
	ui_loading,
	ui_intro,
	ui_continue,
	ui_player,
	ui_menus,
	ui_dialog,
	ui_battle,
	ui_keyboard,
	// movement states (player, npcs, monsters, items, etc.)
	mv_idle,
	mv_moving,
	mv_jumping
}

/// @description GamePad Buttons
enum g_button {
	// directions
	dir_up,
	dir_right,
	dir_down,
	dir_left,
	// buttons
	btn_a,
	btn_b,
	btn_x,
	btn_y,
	btn_zl,
	btn_zr,
	btn_start,
	btn_select
}

enum g_dir {
	up = g_button.dir_up,
	right = g_button.dir_right,
	down = g_button.dir_down,
	left = g_button.dir_left
}

enum g_vector {
	xx,
	yy,
	zz
}

enum g_class {
	pk,
	pk_form,
	type,
	ability,
	move
}

enum g_prop {
	class,
	id,
	name,
	codename,
	description,
	//
	type,
	type1,
	type2,
	//
	ability,
	ability1,
	ability2,
	ability3,
	//
	height,
	weight,
	//
	base_hp,
	base_atk,
	base_def,
	base_sp_atk,
	base_sp_def,
	base_speed,
	//
	hp,
	atk,
	def,
	sp_atk,
	sp_def,
	speed,
	//
	yield_hp,
	yield_atk,
	yield_def,
	yield_sp_atk,
	yield_sp_def,
	yield_speed,
	//
	mv_power,
	mv_precision,
	mv_pp,
	mv_category
}
