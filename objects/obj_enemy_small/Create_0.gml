/// @description
//
speed = random(2);
direction = irandom_range(0, 359);
image_angle = direction;

spr_height = sprite_height / 2;
spr_width = sprite_width / 2;
///@method dont_leave_the_room()
dont_leave_the_room = function() {
	if x + spr_width > room_width
	or x - spr_width < 0 {
		hspeed *= -1;
		image_angle = direction;
	}
	if y + spr_height > room_height
	or y - spr_height < 0 {
		vspeed *= -1;
		image_angle = direction;
	}
}

time_set_direction = irandom_range(0, game_get_speed(gamespeed_fps) * 6);
///@method set_direction()
set_direction = function() {
	time_set_direction--;
	if time_set_direction <= 0 {
		speed = random(2);
		direction = irandom_range(0, 359);
		image_angle = direction;
		time_set_direction = irandom_range(0, game_get_speed(gamespeed_fps) * 6);
	}
	if instance_exists(obj_player)
	and point_distance(x, y, obj_player.x, obj_player.y) < 100 {
		var _direction_player = point_direction(x, y, obj_player.x, obj_player.y);
		direction = _direction_player;
		image_angle = direction;
	}
}

