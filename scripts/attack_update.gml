// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_USTRONG:
        if(window < 5){
            can_move = false;
        } else if(window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if(free){
                window_timer--;
                can_wall_jump = true;
            }
        }
        break;
    case AT_NSPECIAL_AIR:
        can_move = false;
        if(window == 1){
            if(!joy_pad_idle){
                window = 3;
                window_timer = 0;
                var sandDashSpeed = 8;
                var sandDashAngle = 30;
                if(up_down){
                    hsp = 0;
                    vsp = -sandDashSpeed;
                } else if(right_down){
                    hsp = sandDashSpeed*dcos(sandDashAngle);
                    vsp = sandDashSpeed*dsin(sandDashAngle);
                } else if(left_down){
                    hsp = -sandDashSpeed*dcos(sandDashAngle);
                    vsp = sandDashSpeed*dsin(sandDashAngle);
                } else {
                    hsp = spr_dir*sandDashSpeed*dcos(sandDashAngle);
                    vsp = sandDashSpeed*dsin(sandDashAngle);
                }
            }
        } else if(window == 2){
            can_attack = true;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE_AIR);
            } else if(!sanddropped && down_hard_pressed){
                sanddropped = true;
                preSanddropVsp = vsp + get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
                vsp = 30;
            } else if(sanddropped){
                if(preSanddropVsp != 0){
                    vsp = preSanddropVsp;
                    preSanddropVsp = 0;
                }
                if(!free && ground_type == 2){
                    if(right_hard_pressed){
                        spr_dir = 1;
                        set_state(PS_DASH);
                    } else if(left_hard_pressed){
                        spr_dir = -1;
                        set_state(PS_DASH);
                    }
                }
            }
        } else if(window == 3){
            can_attack = true;
            if(!free){
                window = 4;
                window_timer = 0;
                spr_dir = sign(hsp);
                sound_play(sanddashLandSound);
            }
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE_AIR);
            }
        }
        break;
    case AT_NSPECIAL:
        can_move = false;
        if(window == 1){
            if(!joy_pad_idle){
                var sandDashSpeed = 8;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                if(up_down){
                    window = 3;
                    window_timer = 0;
                    hsp = 0;
                    vsp = -sandDashSpeed;
                } else if(right_down){
                    spr_dir = 1;
                    set_state(PS_DASH);
                } else if(left_down){
                    spr_dir = -1;
                    set_state(PS_DASH);
                }
            }
        } else if(window == 2){
            can_attack = true;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE);
            }
        } else if(window == 3){
            can_attack = true;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE);
            }
        }
        break;
}