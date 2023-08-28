_speed = 2;
///@method moovement()
moovement = function(){
	var _left, _right, _up, _down;
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));

	x += (_right - _left) * _speed;
	y += (_down - _up) * _speed;
}