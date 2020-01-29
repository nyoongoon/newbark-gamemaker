/// @description Insert description here
// You can write your code in this editor

cam_mode = g_camera_mode.follow_target_ease;
cam_confined = true;
cam_follow_target = oPlayer;
cam_view_width = camera_get_view_width(view_camera[0]);
cam_view_height = camera_get_view_height(view_camera[0]);
cam_target_x = 0;
cam_target_y = 0;
cam_ease_speed = 0.2;