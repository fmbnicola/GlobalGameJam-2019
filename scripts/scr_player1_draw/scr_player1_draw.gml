//draw body
draw_sprite_ext(spr_player1_body,0,x,y,image_xscale,image_yscale,rotation,c_white,1);

//draw head
draw_sprite_ext(spr_player1_head,0,head_x,head_y,image_xscale,image_yscale,rotation,c_white,1);

//draw_face
draw_sprite_ext(spr_player1_face,face_sprite,face_x,face_y,image_xscale,image_yscale,rotation,c_white,1);

physics_draw_debug();