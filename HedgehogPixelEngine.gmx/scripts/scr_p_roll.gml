//Start rolling
if action == 0 && ground && key_d && abs(gsp) >= 0.5{
    action = 5;
    audio_play_sound(snd_player_spin, 10, false);}

//Stop rolling
if action = 5 && ground  && abs(gsp) < 0.1484375
    action = 0;
    
if action = 5 && !ground
    action = 0;
    
//Apply rolling friction and deacceleration
if action == 5{
    gsp -= min(abs(gsp), rollfrc) * sign(gsp);
    if (gsp < 0 && key_r) || (gsp > 0 && key_l){
        gsp -= min(abs(gsp), rolldcc) * sign(gsp);
    }
        
}
