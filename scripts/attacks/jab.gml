set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 106);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));