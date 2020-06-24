set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_neutral"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_neutral_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/3);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 12);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);