/// @description Fazendo a bala surgir
// surgimento e destruição da bala
if image_alpha < 1 image_alpha += 0.3;
auto_destroy-- if auto_destroy <= 0 instance_destroy()