spring = scr_collision_arg_any(par_springs);
if spring != noone return ((scr_collision_arg_bottom(obj_spring_v) && spring.image_yscale == 1) || (scr_collision_arg_top(obj_spring_v) && spring.image_yscale == -1));
