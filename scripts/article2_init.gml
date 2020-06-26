// target init (targetLv needs to be assigned when creating this article) (Muno's template somewhat)

//decide which target
targetLv = player_id.dspecialChargeWindow;

//Sprite and direction
sprite_index = player_id.targetSprite[targetLv-1];
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = false;

//State
state = 0;
stateTimer = 0;
articleTimer = 0;

//movement
hitstop = 0;
hsp = 0;
vsp = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

//Cope with own mortality
should_die = false;

//windows
window = 1;
windowTimer = 0;
windowLength[0] = 0;
windowFrames[0] = 0;
windowStartFrame[0] = 0;