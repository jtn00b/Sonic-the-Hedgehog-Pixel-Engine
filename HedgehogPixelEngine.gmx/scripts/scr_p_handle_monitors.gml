///scr_handle_monitors
if scr_collision_box_main(par_monitors){
    monitor = scr_collision_box_main(par_monitors);
    if monitor != noone{
        monitor.icon.player_id = id;
        if (spin && !ground && sign(ysp) ==1 ) || (ground && spin){
            if (spin && !ground && sign(ysp)==1) || (ground && spin){
                if ysp > 4 && key_ah {ysp = ysp*-1;}
                else {ysp = -4;}
            }
            if audio_is_playing(snd_monitor_destroyed) audio_stop_sound(snd_monitor_destroyed);
                audio_play_sound(snd_monitor_destroyed, 0, false);
            with(monitor){instance_destroy();}
        }
    } else exit;
}
