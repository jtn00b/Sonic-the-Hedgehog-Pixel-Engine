/*switch mode{
    case 0:
    case 2:
        a = collision_line(center_x, sensor_e_y, sensor_e_x, sensor_e_y, argument0, true, true)
        break;
    case 1:
    case 3:
        a = collision_line(sensor_e_x, center_y, sensor_e_x, sensor_e_y, argument0, true, true)
        break;
}
return a;*/
return collision_point(sensor_e_x, sensor_e_y, argument0, true, true);
