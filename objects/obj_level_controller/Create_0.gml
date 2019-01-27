score = 0;

if(not instance_exists(obj_character)){
	instance_create_layer(960,0,"Instances",obj_character);
}

var bk_cnt = ds_grid_height(global.dg_books);

var pivot = ds_list_create();
var cnt = 0;

with obj_pivot {
	if(free){
		ds_list_add(pivot, id);
		cnt += 1;
	}
}

for(var i = 0; i < bk_cnt; i++){
	var bk = instance_create_layer(x,y,"books",obj_small_book);
	bk.book_id = i;
	bk.state   = "spawn";
	
	var ind = irandom(cnt-1);
	var piv = pivot[| ind];
	
	
	if(piv != noone){
		bk.phy_position_x = piv.x;
		bk.phy_position_y = piv.y;
	}
}

ds_list_destroy(pivot);
