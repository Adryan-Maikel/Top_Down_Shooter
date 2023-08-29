_speed = 2;

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