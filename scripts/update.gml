//update

switch(state){ // dash stuff
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
        } else if(image_index == sprite_get_number(walkSprite)-1){
            set_state(PS_DASH_STOP);
        }
        break;
    default:
        continueDash = false;
        break;
}

// reset used sanddash variable
if(!free || state == PS_WALL_JUMP){
    sanddashed = false;
} else if(sanddashed){
    move_cooldown[AT_NSPECIAL_AIR] = 2;
}

//update.gml
if(grabbedidFspecial != noone){
    if(instance_exists(grabbedidFspecial)){
        grabbedidFspecial.ungrab++;
        if(grabbedidFspecial.ungrab == 2){
            if(grabbedidFspecial.state == PS_WRAPPED)
                grabbedidFspecial.state = PS_TUMBLE;
            grabbedidFspecial.ungrab = 0;
            grabbedidFspecial = noone;
        }
    } else {
        grabbedidFspecial = noone;
    }
}