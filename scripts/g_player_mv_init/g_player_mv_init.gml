// Built-in vars
image_speed = 0;
image_index = 0;
sprite_index = spr_player_walk_down;

// Movement vars
mv_state = g_state.mv_idle;
mv_target_x = x;
mv_target_y = y;
mv_speed = g_player_walk_speed;
mv_dir = g_dir.none;
mv_dir_last = g_dir.down;
mv_dir_change_delay = 0;


// Sprites
mv_sprites = [];
mv_sprites[g_dir.up] = spr_player_walk_up;
mv_sprites[g_dir.right] = spr_player_walk_right;
mv_sprites[g_dir.down] = spr_player_walk_down;
mv_sprites[g_dir.left] = spr_player_walk_left;


// x/y offsets
mv_offsets = [];
mv_offsets[g_dir.up, g_vector.xx] = 0;
mv_offsets[g_dir.up, g_vector.yy] = -g_tile_height;

mv_offsets[g_dir.right, g_vector.xx] = g_tile_width;
mv_offsets[g_dir.right, g_vector.yy] = 0;

mv_offsets[g_dir.down, g_vector.xx] = 0;
mv_offsets[g_dir.down, g_vector.yy] = g_tile_height;

mv_offsets[g_dir.left, g_vector.xx] = -g_tile_width;
mv_offsets[g_dir.left, g_vector.yy] = 0;

// collisions
mv_collisions_layer = layer_get_id("collisions");
mv_collisions_tilemap = layer_tilemap_get_id(mv_collisions_layer);
mv_collisions_sound = sfx_collide;

