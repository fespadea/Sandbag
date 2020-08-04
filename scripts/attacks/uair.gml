set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 115);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));