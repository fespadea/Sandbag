switch (state){
    case PS_IDLE_AIR:
        if(vsp > 0){
            image_index = sprite_get_number(jumpSprite) - 1;
        }
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_FTILT:
                if(window == get_attack_value(attack, AG_NUM_WINDOWS)){
                    if(free){
                        image_index = min(image_index, 8);
                    } else{
                        image_index = max(image_index, 9);
                    }
                }
                break;
            case AT_DSTRONG:
                if(window == 2 || window == 3){
                    hud_offset = 60;
                }
                break;
            case AT_USTRONG:
                if(window > 1 && window < 6){
                    hud_offset = 55;
                }
                break;
            case AT_NSPECIAL_AIR:
                if(window == 3){
                    if(hsp == 0){
                        sprite_index = sanddashUpSprite[0];
                        hurtboxID.sprite_index = sanddashUpSprite[1];
                    } else if(hsp > 0){
                        sprite_index = sanddashForwardSprite[0];
                        hurtboxID.sprite_index = sanddashForwardSprite[1];
                    } else { // hsp < 0
                        sprite_index = sanddashBackwardSprite[0];
                        hurtboxID.sprite_index = sanddashBackwardSprite[1];
                    }
                } else if(window == 4){
                    sprite_index = sanddashLandingLagSprite[0];
                    hurtboxID.sprite_index = sanddashLandingLagSprite[1];
                }
                break;
            case AT_NSPECIAL:
                if(window == 3){
                    sprite_index = sanddashUpSprite[0];
                    hurtboxID.sprite_index = sanddashUpSprite[1];
                }
                break;
            case AT_FSPECIAL:
                if(window == 2){
                    if(window_timer > 1){
                        if(vsp < -2){
                            image_index = 4;
                            sandgrabGrabHitbox.x_pos = 11*spr_dir;
                            sandgrabGrabHitbox.y_pos = -44;
                        } else if(vsp < -.3){
                            image_index = 5;
                            sandgrabGrabHitbox.x_pos = 19*spr_dir;
                            sandgrabGrabHitbox.y_pos = -33;
                        } else if(vsp < 2){
                            image_index = 6;
                            sandgrabGrabHitbox.x_pos = 19*spr_dir;
                            sandgrabGrabHitbox.y_pos = -27;
                        } else { // vsp > 2
                            image_index = 7;
                            sandgrabGrabHitbox.x_pos = 14*spr_dir;
                            sandgrabGrabHitbox.y_pos = -21;
                        }
                    }
                } else if(window > 3){
                    sprite_index = sandgrabGrabSprite[0];
                    hurtboxID.sprite_index = sandgrabGrabSprite[1];
                }
                break;
            case AT_USPECIAL:
                if(image_index > 3 && image_index < 10){
                    hud_offset = 80;
                }
                break;
        }
        break;
}