spring = scr_collision_arg_any(par_springs);
if scr_collision_arg_any(par_springs)
{
    if scr_collision_spring_check()
    {
        if scr_collision_arg_any(obj_spring_v) ysp = spring.spring_force*(-spring.image_yscale);
        ground = false;
        action = 7;
        with spring {
            audio_play_sound(snd_spring, 0, false)
            image_index = 1;
            image_speed = 0.4;
        }
    }
}
