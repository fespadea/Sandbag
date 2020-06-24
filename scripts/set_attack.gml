//set_attack

switch(attack){
    case AT_NSPECIAL:
        if(free){
            attack = AT_NSPECIAL_AIR;
            sanddropped = false;
            sanddashed = true;
        }
        break;
}