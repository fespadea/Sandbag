switch (state){
    case PS_IDLE_AIR:
        if(vsp > 0){
            image_index = sprite_get_number(jumpSprite) - 1;
        }
        break;
    case PS_ATTACK_GROUND:
        if(attack == AT_EXTRA_1){
            switch(window){
                case 1:
                    sprite_index = idleSprite;
                    break;
                case 2:
                    sprite_index = dashstartSprite;
                    break;
                case 3:
                    sprite_index = dashSprite;
                    break;
                case 4:
                    sprite_index = dashstopSprite;
                    break;
                case 5:
                    sprite_index = dashturnSprite;
                    break;
            }
        }
}