//update

switch(state){
    case PS_IDLE:
        set_attack(AT_EXTRA_1);
        window = 1;
        break;
    case PS_DASH_START:
        set_attack(AT_EXTRA_1);
        window = 2;
        break;
    case PS_DASH:
        set_attack(AT_EXTRA_1);
        window = 3;
        break;
    case PS_DASH_STOP:
        set_attack(AT_EXTRA_1);
        window = 4;
        break;
    case PS_DASH_TURN:
        set_attack(AT_EXTRA_1);
        window = 5;
        break;
}