var px = (obj_player.x div 128) * 128 + 64;
var py = (obj_player.y div 128) * 128 + 64;

if (mp_grid_path(global.grid, path, x, y, px, py, true)){
	path_start(path, spd, path_action_stop, false);
}