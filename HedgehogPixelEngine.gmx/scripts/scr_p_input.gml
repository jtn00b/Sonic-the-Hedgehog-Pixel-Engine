//-- ACTION LIST --//
/*
0 = neutral
1 = jump
2 = crouch down
3 = look up
4 = spindash charge
5 = roll
6 = push
7 = spring
8 = skidding
*/
if allow_input
{
key_l = keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < -0.5) || gamepad_button_check(0, gp_padl);
key_r = keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0.5) || gamepad_button_check(0, gp_padr);
key_u = keyboard_check(vk_up) || (gamepad_axis_value(0, gp_axislv) < -0.5) || gamepad_button_check(0, gp_padu);
key_d = keyboard_check(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0.5) || gamepad_button_check(0, gp_padd);
key_a = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face1);
key_ar = keyboard_check_released(ord("A")) || gamepad_button_check_released(0, gp_face1);
key_ah = keyboard_check(ord("A")) || gamepad_button_check(0, gp_face1);
}


//-- Movement --//
scr_p_move();

//-- Direction Change --//
scr_p_direction_update();

//-- Jumping --//
scr_p_jump();

//-- Crouch Down --//
//Start crouching down
if action == 0 && ground && key_d && gsp == 0
    action = 2;
    
//Stop crouching
if action = 2 && !key_d
    action = 0;

//-- Look Up --//
//Start looking up
if action == 0 && ground && key_u && gsp == 0
    action = 3;
//Stop looking up
if action = 3 && !key_u
    action = 0;

//-- Spindash --//
scr_p_spindash();

//-- Rolling --//
scr_p_roll();

//-- Pushing --//
scr_p_push();

//-- Skidding --//
scr_p_skidding();

//-- Hurt System --//
scr_p_hurt();
