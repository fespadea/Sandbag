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
                        sprite_index = sanddashUpSprite;
                    } else if(hsp > 0){
                        sprite_index = sanddashForwardSprite;
                    } else { // hsp < 0
                        sprite_index = sanddashBackwardSprite;
                    }
                } else if(window == 4){
                    sprite_index = sanddashLandingLagSprite;
                }
                break;
            case AT_NSPECIAL:
                if(window == 3){
                    sprite_index = sanddashUpSprite;
                }
                break;
        }
        break;
}