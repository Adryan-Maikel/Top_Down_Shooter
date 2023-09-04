/// @description 
// 
view_set_xport(view, 0);
view_set_yport(view, 0);
if not active exit;
view_set_xport(view, random_range(-intensity, intensity));
view_set_yport(view, random_range(-intensity, intensity));

duration -= 1;
if duration <= 0 active = false;
