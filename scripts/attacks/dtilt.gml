set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, get_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 79);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));