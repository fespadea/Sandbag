// hit player

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