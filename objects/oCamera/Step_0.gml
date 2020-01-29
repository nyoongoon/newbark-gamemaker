/// @description Update camera
// https://www.youtube.com/watch?v=Gj6bTqKIsLk

if (cam_mode == g_camera_mode.paused)
{
	return;
}

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var view_wh = (cam_view_width div 2);
var view_hh = (cam_view_height div 2);

switch(cam_mode)
{
    case g_camera_mode.follow_target:
		if(!instance_exists(cam_follow_target)) break;
        cx = cam_follow_target.x - view_wh;
        cy = cam_follow_target.y - view_hh;
    break;
	
    case g_camera_mode.follow_target_ease:
		if(!instance_exists(cam_follow_target)) break;
		var dx = cam_follow_target.x - view_wh;
		var dy = cam_follow_target.y - view_hh;
		cx = lerp(cx, dx, cam_ease_speed);
		cy = lerp(cy, dy, cam_ease_speed);
		
		if(point_distance(cx, cy, dx, dy) < 1)
		{
			// cam arrived to target
			// cam_mode = g_camera_mode.follow_target;
		}
    break;	
	
    case g_camera_mode.goto_coords:
		cx = cam_target_x - view_wh;
		cy = cam_target_y - view_hh;
    break;
	
    case g_camera_mode.goto_coords_ease:
		cx = lerp(cx, cam_target_x - view_wh, cam_ease_speed);
		cy = lerp(cy, cam_target_y - view_hh, cam_ease_speed);
    break;
}

if (cam_confined)
{
	cx = clamp(cx, 0, room_width - cam_view_width);
	cy = clamp(cy, 0, room_height - cam_view_height);
}

camera_set_view_pos(view_camera[0], cx, cy);
