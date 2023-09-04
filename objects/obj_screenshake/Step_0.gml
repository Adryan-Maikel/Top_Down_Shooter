/// @description 
// 
if not active exit;
view_set_xport(view, random_range(-intensity, intensity));
view_set_yport(view, random_range(-intensity, intensity));
duration *= 0.1;
if duration <= 0 active = false;
