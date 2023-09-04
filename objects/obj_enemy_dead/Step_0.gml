/// @description 
// 
time_dead--;
if time_dead >= 0 exit;
image_alpha -= 0.005;
if image_alpha >= 0 exit;
instance_destroy();