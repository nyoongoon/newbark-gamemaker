///@description Checks for collisions
///@arg destination_x
///@arg destination_y
///@arg tilemap_layer_name

var xx, yy, tilemap, cx, cy, tile_index;

xx = argument0;
yy = argument1;
tm = layer_tilemap_get_id(layer_get_id(argument2));

// save current position
cx = x;
cy = y;

// move to the position to check
x = xx;
y = yy;

// check for collisions on all 4 corners of the collision mask
tile_index = tilemap_get_at_pixel(tm, bbox_right, bbox_top);
if (tile_index <= 0) tile_index = tilemap_get_at_pixel(tm, bbox_left, bbox_top);
if (tile_index <= 0) tile_index = tilemap_get_at_pixel(tm, bbox_right, bbox_bottom);
if (tile_index <= 0) tile_index = tilemap_get_at_pixel(tm, bbox_left, bbox_bottom);

// restore original position
x = cx;
y = cy;

return tile_index;