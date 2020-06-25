//post-draw


shader_start();
with obj_article1 {
    if(player_id == other){
        draw_sprite_ext(other.sprite_index, other.image_index, x, y, other.spr_dir, 1, 0, image_blend, image_alpha);
    }
}
shader_end();