// hit player

// grab hitbox on fspecial
if(my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        if (!hit_player_obj.clone && grabbedidFspecial == noone){
            grabbedidFspecial = hit_player_obj;
            grabbedidFspecial.ungrab = 0;
            window = 4;
            window_timer = 0;
            set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 50);
            if(instance_exists(sandgrabGrabHitbox)){
                sandgrabGrabHitbox.length = 0;
            }
        }
    }
}

// bomb hitbox on uspecial
if(my_hitboxID.attack == AT_USPECIAL){
    if(my_hitboxID.hbox_num == 1){
        bombNotActivated = false;
        sound_play(my_hitboxID.sound_effect);
        if(hit_player_obj == id){
            create_hitbox(my_hitboxID.attack, 3, round(my_hitboxID.x), round(my_hitboxID.y)).can_hit_self = true;
        } else {
            create_hitbox(my_hitboxID.attack, 2, round(my_hitboxID.x), round(my_hitboxID.y)).can_hit_self = true;
        }
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