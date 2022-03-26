//This scripts requires scr_p_get_hurt() to set the hurt statement
hurttimer = max(hurttimer -1, 0);

if hurttimer = 0
{
    if hurt = 1
    {
        action = 8;
        ysp = -4;
        xsp = -4 * dir;
        ground = false;
        hurt = 0;
        hurttimer = 250;
        audio_play_sound(snd_player_ringloss, 0, false);
        scr_ringloss_create();
    }
    else if hurt = 2
    {
        action = 9;
        ysp = -7;
        xsp = 0;
        ground = false;
        hurt = 0;
        hurttimer = 150;
        audio_play_sound(snd_player_hurt, 0, false);
    }
}

if action = 8 && ground{
    xsp = 0;
    gsp = 0;
    action = 0;
}   

if action = 8 || action = 9
    allow_input = false;
else
    allow_input = true;

hurt = 0;
