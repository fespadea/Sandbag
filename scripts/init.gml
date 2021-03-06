hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hurtbox_hitstun");

char_height = 54;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .33;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 0;
dash_speed = 8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 20;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 1;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 7;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 7;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//sounds
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//sprites
walkSprite = sprite_get("walk");
dashSprite = sprite_get("dash");
jumpSprite = sprite_get("jump");

// dash variable
continueDash = false;

// Sanddash variables
sanddashed = false;
sanddropped = false;
preSanddropVsp = 0;
movedTarget = false;
// land sound
sanddashLandSound = asset_get("sfx_land_heavy");
// sanddash sprites
sanddashForwardSprite[0] = sprite_get("nspecial_forward");
sanddashForwardSprite[1] = sprite_get("nspecial_forward_hurt");
sanddashBackwardSprite[0] = sprite_get("nspecial_backward");
sanddashBackwardSprite[1] = sprite_get("nspecial_backward_hurt");
sanddashUpSprite[0] = sprite_get("nspecial_up");
sanddashUpSprite[1] = sprite_get("nspecial_up_hurt");
sanddashLandingLagSprite[0] = sprite_get("nspecial_land");
sanddashLandingLagSprite[1] = sprite_get("nspecial_land_hurt");

// sandgrab variables
sandgrabInitialHeight = 0;
sandgrabGrabbed = false;
sandgrabGrabHitbox = noone;
grabbedTarget = false;
//grab template
grabbedidFspecial = noone;
// sandgrab sprite
sandgrabGrabSprite[0] = sprite_get("fspecial_grab");
sandgrabGrabSprite[1] = sprite_get("fspecial_grab_hurt");

//bomb variables
bombNotActivated = true;

// break the targets variables
targetArticle = noone;
dspecialChargeWindow = 1;
initialDspecialChargeWindow = 1;
killTarget = false;
letGoOfDspecialCharge = false;
// sprites
targetSprite[0] = sprite_get("dspecial_target_lv1");
targetSprite[1] = sprite_get("dspecial_target_lv2");
targetSprite[2] = sprite_get("dspecial_target_lv3");
targetSprite[3] = sprite_get("dspecial_target_lv4");
targetSprite[4] = sprite_get("dspecial_target_lv5");
targetPieceSprite[0, 0] = sprite_get("dspecial_target_lv1_piece");
targetPieceSprite[0, 1] = sprite_get("dspecial_target_lv1_piece_top");
targetPieceSprite[1, 0] = sprite_get("dspecial_target_lv2_piece");
targetPieceSprite[1, 1] = sprite_get("dspecial_target_lv2_piece_top");
targetPieceSprite[2, 0] = sprite_get("dspecial_target_lv3_piece");
targetPieceSprite[2, 1] = sprite_get("dspecial_target_lv3_piece_top");
targetPieceSprite[3, 0] = sprite_get("dspecial_target_lv4_piece");
targetPieceSprite[3, 1] = sprite_get("dspecial_target_lv4_piece_top");
targetPieceSprite[4, 0] = sprite_get("dspecial_target_lv5_piece");
targetPieceSprite[4, 1] = sprite_get("dspecial_target_lv5_piece_top");
// sounds
targetPlaceSound = sound_get("targetDrop");
targetBreakSound = sound_get("targetBreak");
targetParryUseSound = asset_get("sfx_parry_use");
targetParrySuccessSound = asset_get("sfx_parry_success");

// taunt variables
tauntAngle = 0;
confettiesHfx = hit_fx_create(sprite_get("taunt_confetties"), 75);
// sprite
tauntSprite = sprite_get("taunt");
tauntSfx1 = sound_get("taunt1");
tauntSfx2 = sound_get("taunt2");
tauntSfx3 = sound_get("taunt3");
tauntSfx4 = sound_get("taunt4");