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
	if instance_exists(obj_player) {
		if point_distance(x, y, obj_player.x, obj_player.y) < 100 {
			var _direction_player = point_direction(x, y, obj_player.x, obj_player.y);
			direction = _direction_player;
			image_angle = direction;
		}
	}
}

life = 3;
///@method set_damage()
set_damage = function() {
	if place_meeting(x, y, obj_bullet){
		var _bullet = instance_place(x, y, obj_bullet);
		instance_destroy(_bullet);
		life--;
		speed = 0;
		if life <= 0 destroying_me();
	}
}

///@method destroying_me()
destroying_me = function() {
	instance_destroy();
	repeat(irandom_range(10, 20)) {
		var _slice = instance_create_layer(x, y, layer, obj_enemy_dead);
		_slice.direction = irandom(359);
		_slice.image_angle = _slice.direction;
		_slice.speed = irandom_range(5, 10);
	}
}
