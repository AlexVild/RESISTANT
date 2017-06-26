if (!other.invincible) {
	knockback_direction = point_direction(x, y, other.x, other.y);
	other.dx += lengthdir_x(other.spd * knockback, knockback_direction);
	other.dy += lengthdir_y(other.spd * knockback, knockback_direction);
	other.hp -= dmg;
}
event_inherited();
