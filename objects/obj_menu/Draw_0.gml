draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_title_options);
draw_set_color(c_white);

for (var m = 0; m < array_length_1d(menu); m ++) {
	draw_text(x + space, y + (m * space), string(menu[m]));
}