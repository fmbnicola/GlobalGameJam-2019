//draw body
draw_sprite_ext(spr_player1_body,0,x,y,image_xscale,image_yscale,rotation,c_white,1);

//draw head
draw_sprite_ext(spr_player1_head,0,head_x,head_y,image_xscale,image_yscale,rotation,c_white,1);

//draw_face
draw_sprite_ext(spr_player1_face,face_sprite,face_x,face_y,image_xscale,image_yscale,rotation,c_white,1);

//draw_arms
draw_sprite_ext(spr_player1_arm,0,arm1_x,arm1_y,image_xscale,image_yscale,rotation+arm1_rot,c_white,1);
draw_sprite_ext(spr_player1_arm,0,arm2_x,arm2_y,-image_xscale,image_yscale,rotation-arm2_rot,c_white,1);

//physics_draw_debug();
