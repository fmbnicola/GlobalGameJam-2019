draw_text(x+30,y,arm_state);

if(using_ladder){  //draws player facing backwards
	
	//draw_face
	draw_sprite_ext(spr_player1_face,face_sprite,face_x,face_y,image_xscale,image_yscale,rotation,c_white,1);
	
	//draw head
	draw_sprite_ext(spr_player1_head,0,head_x,head_y,image_xscale,image_yscale,rotation,c_white,1);
	
	//draw_arms
	var arm1_mod = 1;
	var arm2_mod = 1;
	if(arm1_rot>0 and arm1_rot<180){
		var arm1_mod = -1;
	}
	if(arm2_rot<0 and arm2_rot>-180){
		var arm2_mod = -1;
	}
	draw_sprite_ext(spr_player1_arm,0,arm1_x,arm1_y,image_xscale,image_yscale*arm1_mod,rotation+arm1_rot,c_white,1);
	draw_sprite_ext(spr_player1_arm,0,arm2_x,arm2_y,-image_xscale,image_yscale*arm1_mod,rotation-arm2_rot,c_white,1);

	//draw body
	draw_sprite_ext(spr_player1_body,0,x,y,image_xscale,image_yscale,rotation,c_white,1);

}
else{ //draws player facing forwards

	//draw body
	draw_sprite_ext(spr_player1_body,0,x,y,image_xscale,image_yscale,rotation,c_white,1);

	//draw head
	draw_sprite_ext(spr_player1_head,0,head_x,head_y,image_xscale,image_yscale,rotation,c_white,1);

	//draw_face
	draw_sprite_ext(spr_player1_face,face_sprite,face_x,face_y,image_xscale,image_yscale,rotation,c_white,1);

	//draw_arms
	var arm1_mod = 1;
	var arm2_mod = 1;
	if(arm1_rot>0 and arm1_rot<180){
		var arm1_mod = -1;
	}
	if(arm2_rot<0 and arm2_rot>-180){
		var arm2_mod = -1;
	}
	draw_sprite_ext(spr_player1_arm,0,arm1_x,arm1_y,image_xscale,image_yscale*arm1_mod,rotation+arm1_rot,c_white,1);
	draw_sprite_ext(spr_player1_arm,0,arm2_x,arm2_y,-image_xscale,image_yscale*arm1_mod,rotation-arm2_rot,c_white,1);

}

//physics_draw_debug();
