if action = 0 && ground
{
    if key_l && dir = -1
    { if scr_collision_sensor_e()
        action = 6; }
    
    if key_r && dir = 1
    { if scr_collision_sensor_f()
        action = 6; }
}
if action = 6
{
    if (!key_l || !scr_collision_sensor_e()) && dir = -1 action = 0;
    else if (!key_r || !scr_collision_sensor_f()) && dir = 1 action = 0;
}
