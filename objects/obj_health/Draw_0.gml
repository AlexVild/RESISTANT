var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_health);
draw_set_color(c_white);
draw_text(cx+cw/4, cy+25, string_insert(string(obj_player.hp), "Health: ", 9));