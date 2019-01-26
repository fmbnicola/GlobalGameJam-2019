if(highlight == true){
	if(state == "back"){
		draw_sprite_ext(spr_small_book_back,1,x,y,image_xscale,image_yscale,0,c_white,1);
	}
	else if(state == "side"){
		draw_sprite_ext(spr_small_book_side,1,x,y,image_xscale,image_yscale,-phy_rotation,c_white,1);
	}
}

if(state == "back"){
	draw_sprite_ext(spr_small_book_back,0,x,y,image_xscale,image_yscale,0,c_white,1);
}
else if(state == "side"){
	draw_sprite_ext(spr_small_book_side,0,x,y,image_xscale,image_yscale,-phy_rotation,c_white,1);
}

physics_draw_debug();