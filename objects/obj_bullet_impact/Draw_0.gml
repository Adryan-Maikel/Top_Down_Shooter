/// @description 
//
draw_self()
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_bullet_effect, 0, x, y, image_xscale * 2, image_yscale * 2, image_angle, c_green, image_alpha);
gpu_set_blendmode(bm_normal);