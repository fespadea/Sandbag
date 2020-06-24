//update

switch(state){
    case PS_DASH:
        if(image_index == sprite_get_number(dashSprite)-1){
            set_state(PS_DASH_STOP);
            continueDash = true;
        }
        break;
    case PS_DASH_STOP:
        hsp *= dash_stop_percent;
        break;
    case PS_WALK:
        if(continueDash){
            set_state(PS_DASH_START);
        } else if(image_index == sprite_get_number(walkSprite)-3){
            set_state(PS_DASH_STOP);
        }
        break;
    default:
        continueDash = false;
        break;
}