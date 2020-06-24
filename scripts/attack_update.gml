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
                if(left_down){
                    hsp = -sandDashSpeed;
                } else if(right_down){
                    hsp = sandDashSpeed;
                }
                if(up_down){
                    vsp = -sandDashSpeed;
                } else if(down_down){
                    vsp = sandDashSpeed;
                }
                if(hsp != 0 && vsp != 0){
                    hsp *= dcos(45);
                    vsp *= dcos(45);
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
                sound_play(asset_get("sfx_land_heavy"));
            }
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE_AIR);
            }
        }
        break;
}