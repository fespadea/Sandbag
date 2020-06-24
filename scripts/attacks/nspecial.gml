set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_neutral"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_neutral_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) - 2);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);