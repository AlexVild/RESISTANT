vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);
vw = camera_get_view_width(view_camera[0]);
draw_set_color(make_color_rgb(255, 255, alpha*100));
gpu_set_blendmode(bm_add);
draw_rectangle(vx, vy, vx + vw, vy + vw, false);
gpu_set_blendmode(bm_normal);
draw_set_color(c_black);
