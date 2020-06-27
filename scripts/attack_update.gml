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
            can_wall_jump = true;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                set_state(PS_IDLE_AIR);
            } else if(!sanddropped && down_hard_pressed){
                sanddropped = true;
                preSanddropVsp = vsp + get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
                vsp = 30;
            }
            if(sanddropped){
                if(preSanddropVsp != 0){
                    vsp = preSanddropVsp;
                    preSanddropVsp = 0;
                }
                if(!free){
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
            can_wall_jump = true;
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
    case AT_FSPECIAL:
        can_move = false;
        if(window == 1){
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                sandgrabInitialHeight = y;
                vsp = -5;
                hsp = 8*spr_dir;
            }
        } else if(window == 2){
            can_wall_jump = true;
            if(hsp == 0){
                can_shield = true;
            }
            if(window_timer == 1){
                with pHitBox {
                    if(orig_player == other.player && attack == AT_FSPECIAL && hbox_num == 1){
                        other.sandgrabGrabHitbox = id;
                    }
                }
            }
            if(!free){
                window = 4;
                window_timer = 0;
                sandgrabGrabHitbox.length = 0;
            } else if(y > sandgrabInitialHeight){
                window = 3;
                window_timer = 0;
                sandgrabGrabHitbox.length = 0;
            } else if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                window_timer--;
                sandgrabGrabHitbox.length++;
            }
        } else if(window == 3){
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                if(free){
                    if(was_parried){
                        set_state(PS_PRATFALL);
                    } else {
                        set_state(PS_IDLE_AIR);
                    }
                } else {
                    if(was_parried){
                        set_state(PS_PRATLAND);
                    } else {
                        set_state(PS_IDLE);
                    }
                }
            }
        } else if(window == 4){
            if(instance_exists(grabbedidFspecial)){
                if(window_timer == 1){
                    x = grabbedidFspecial.x;
                    y = grabbedidFspecial.y - grabbedidFspecial.char_height/2;
                    hsp = 0;
                    vsp = 0;
                }
                grabbedidFspecial.ungrab = 0;
                grabbedidFspecial.x = x + hsp;
                grabbedidFspecial.y = y + vsp + grabbedidFspecial.char_height/2;
                grabbedidFspecial.wrap_time = 6000;
                grabbedidFspecial.state = PS_WRAPPED;
            }
        } else if(window == 5){
            if(instance_exists(grabbedidFspecial)){
                grabbedidFspecial.ungrab = 0;
                switch(image_index){
                    case 2:
                        grabbedidFspecial.x = x + hsp + lerp(0, -26*spr_dir, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)/3));
                        grabbedidFspecial.y = y + vsp + grabbedidFspecial.char_height/2 + lerp(0, -14, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)/3));
                        break;
                    case 3:
                        grabbedidFspecial.x = x + hsp + lerp(-26*spr_dir, -31*spr_dir, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)/3));
                        grabbedidFspecial.y = y + vsp + grabbedidFspecial.char_height/2 + lerp(-14, -33, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)*2/3));
                        break;
                    case 4:
                        grabbedidFspecial.x = x + hsp + lerp(-31*spr_dir, -19*spr_dir, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)/3));
                        grabbedidFspecial.y = y + vsp + grabbedidFspecial.char_height/2 + lerp(-33, -61, window_timer/(get_window_value(attack, window, AG_WINDOW_LENGTH)));
                        break;
                }
                grabbedidFspecial.wrap_time = 6000;
                grabbedidFspecial.state = PS_WRAPPED;
            }
        }
        break;
    case AT_USPECIAL:
        hsp /= 1.5;
        can_fast_fall = false;
        if(window > 1){
            var bombDoesNotExist = true;
            with pHitBox {
                if(player == other.player && attack == other.attack && hbox_num == 1){
                    bombDoesNotExist = false;
                }
            }
            if(bombDoesNotExist){
                if(free){
                    if(was_parried){
                        set_state(PS_PRATFALL);
                    } else {
                        set_state(PS_IDLE_AIR);
                    }
                } else {
                    if(was_parried){
                        set_state(PS_PRATLAND);
                    } else {
                        set_state(PS_IDLE);
                    }
                }
            }
        }
        break;
    case AT_DSPECIAL:
        can_move = false;
        can_fast_fall = false;
        if(window < 6){
            can_shield = true;
            dspecialChargeWindow = window;
            if(instance_exists(targetArticle)){
                killTarget = true;
            }
            if(!killTarget && state_timer % 16 == 1){
                instance_create(round(x), round(y), "obj_article1");
            }
            if(!special_down){
                letGoOfDspecialCharge = true;
            }
            if(((special_pressed || is_special_pressed(DIR_ANY)) && letGoOfDspecialCharge) || killTarget){ // press special again to drop target
                window = 6;
                window_timer = 0;
            }
        } else if(window == 7 && window_timer == 1){
            if(!killTarget){
                if(window_timer == 1){
                    sound_play(targetPlaceSound);
                }
                targetArticle = instance_create(round(x), round(y - char_height/2 - 5), "obj_article2");
                dspecialChargeWindow = 1;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                if(free){
                    set_state(PS_IDLE_AIR);
                } else {
                    set_state(PS_IDLE);
                }
            }
        }
        break;
    case AT_TAUNT:
        tauntAngle -= ((get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer) / 4.95) * spr_dir;
        break;
}