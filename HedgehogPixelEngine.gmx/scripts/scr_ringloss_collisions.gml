///scr_ringloss_collisions(collision)
a = argument0;
/*a tips:

1 = vertical
2 = horizontal*/

if a = 1
{
    b = (place_meeting(x, y+vspeed+1, obj_walls) or place_meeting(x, y+vspeed-1, obj_walls)) ||
        (place_meeting(x, y+vspeed+1, obj_walls_1) or place_meeting(x, y+vspeed-1, obj_walls_1)) ||
        (place_meeting(x, y+vspeed+1, obj_walls_2) or place_meeting(x, y+vspeed-1, obj_walls_2)) ||
        (place_meeting(x, y+vspeed+1, obj_walls_platform) or place_meeting(x, y+vspeed-1, obj_walls_platform)) ||
        (place_meeting(x, y+vspeed+1, obj_monitor) or place_meeting(x, y+vspeed-1, obj_monitor)) ||
        (place_meeting(x, y+vspeed+1, par_springs) or place_meeting(x, y+vspeed-1, par_springs));
}
else if a = 2
{
    b = place_meeting(x+hspeed+sign(hspeed), y, obj_walls) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_1) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_2) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_platform) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_monitor) ||
        place_meeting(x+hspeed+sign(hspeed), y, par_springs);
}
return b;
