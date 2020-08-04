//hitbox_init

// activate these hitboxes a frame late
if(attack == AT_USPECIAL){
    if(hbox_num > 1){
        hit_priority = 3;
    }
} else if(attack == AT_EXTRA_1){
    if(hbox_num == 3){
        hspIcrement = -hsp*2/length;
        vspIcrement = -vsp*2/length;
    }
}