switch (state){
    case PS_IDLE_AIR:
        if(vsp > 0){
            image_index = sprite_get_number(jumpSprite) - 1;
        }
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        if(attack == AT_FTILT){
            if(window == get_attack_value(attack, AG_NUM_WINDOWS)){
                if(free){
                    image_index = min(image_index, 8);
                } else{
                    image_index = max(image_index, 9);
                }
            }
        }
        if(attack == AT_DSTRONG){
            if(window == 2 || window == 3){
                hud_offset = 60;
            }
        }
}