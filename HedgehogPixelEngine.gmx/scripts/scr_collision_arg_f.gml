/*switch mode{
    case 0:
    case 2:
        a = collision_line(center_x, sensor_f_y, sensor_f_x+6, sensor_f_y, argument0, true, true);
        break;
    case 1:
    case 3:
        a = collision_line(sensor_f_x, center_y, sensor_f_x+6, sensor_f_y, argument0, true, true);
        break;
}
return a;*/
return collision_point(sensor_f_x, sensor_f_y, argument0, true, true);
