// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_EXTRA_1:
        if(down_down){
            set_state(PS_CROUCH);
        }
        switch(window){
            case 1:
                detectMovement();
                break;
            case 2:
                if(window_timer = 1){
                    hsp = dash_speed*spr_dir;
                    sound_play(dashstart_sound);
                    spawn_hit_fx(round(x), round(y), dashstart_bg_hfx);
                    spawn_hit_fx(round(x), round(y), dashstart_fg_hfx);
                }
            case 3:
                keepDashing();
                break;
            case 4:
                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                    if((spr_dir == 1 && right_down) || (spr_dir == -1 && left_down)){
                        window = 2;
                        window_timer = 0;
                    } else{
                        window = 1;
                        window_timer = 0;
                    }
                }
                detectMovement();
                break;
            case 5:
                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                    window = 2;
                    window_timer = 0;
                }
                detectMovement();
                break;
        }
        break;
}

#define detectMovement()
if(right_hard_pressed){ //dash right
    window = 2;
    window_timer = 0;
    spr_dir = 1;
} else if(left_hard_pressed){ //dash left
    window = 2;
    window_timer = 0;
    spr_dir = -1;
}

#define keepDashing()
if(spr_dir == 1){
    if(!right_down){
        if(left_down){
            window = 5;
            window_timer = 0;
            spr_dir = 1;
        } else {
            window = 4;
            window_timer = 0;
        }
    }
} else if(spr_dir == -1){
    if(!left_down){
        if(right_down){
            window = 5;
            window_timer = 0;
            spr_dir = 1;
        } else {
            window = 4;
            window_timer = 0;
        }
    }
}