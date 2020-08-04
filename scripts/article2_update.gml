// target update (Muno's template somewhat)

switch(state){
    case 0:
        if(player_id.killTarget){
            sound_play(player_id.targetBreakSound);
            changeState(1);
        }
        break;
    case 1:
        switch(targetLv){
            case 1:
                for(var i = 0; i < 8; i++){
                    
                }
                break;
        }
        shouldDie = true;
        break;
}

if(shouldDie){
    instance_destroy();
    exit;
}

#define changeState(newState)
state = newState;
state_timer = 0;

#define changeWindow(newWindow)
window = newWindow;
windowTimer = 0;