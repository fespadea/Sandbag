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
        var selfHurtHitbox = create_hitbox(my_hitboxID.attack, 2, round(x), round(y));
        selfHurtHitbox.can_hit_self = true;
        selfHurtHitbox.damage = my_hitboxID.damage;
        selfHurtHitbox.kb_value = my_hitboxID.kb_value;
        selfHurtHitbox.kb_scale = my_hitboxID.kb_scale;
        selfHurtHitbox.hitpause = my_hitboxID.hitpause;
        selfHurtHitbox.hitpause_growth = my_hitboxID.hitpause_growth;
    }
}