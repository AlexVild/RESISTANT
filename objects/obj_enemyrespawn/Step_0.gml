image_xscale = min(image_xscale + 0.02, 1);
image_yscale = image_xscale

img_dir = point_direction(x, y, obj_player.x, obj_player.y);
if (image_xscale == 1) instance_change(obj_walker, true);