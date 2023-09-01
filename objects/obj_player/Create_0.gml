_speed = 2;
was_shot = 0;
cooldown_to_fire = game_get_speed(gamespeed_fps) * 0.2;

///@method moovement()
moovement = function(){
	var _left, _right, _up, _down, _vel_h, _vel_v;
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));

	_vel_h = (_right - _left) * _speed;
	_vel_v = (_down - _up) * _speed;
	
	if _vel_v != 0 or _vel_h != 0 {
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = 2;
	}
	
	x += _vel_h;
	y += _vel_v;
	
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

///@method shoot()
shoot = function(){
	if was_shot <= 0 {
		sprite_index = spr_player_running;
		if mouse_check_button(mb_left) {
			sprite_index = spr_player_fire;
			var _shot = instance_create_layer(x, y, "Instances", obj_bullet);
			_shot.direction = image_angle;
			was_shot = cooldown_to_fire;
			
		}
	} else {
		was_shot--;
	}
}
