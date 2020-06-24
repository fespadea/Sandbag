set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_USTRONG, 2);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 102);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 102);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 102);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 102);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);