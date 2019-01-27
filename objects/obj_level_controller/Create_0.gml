score = 0;

if(not instance_exists(obj_character)){
	instance_create_layer(960,0,"Instances",obj_character);
}

bk_cnt = ds_grid_height(global.dg_books);

pivot = ds_list_create();
cnt = 0;

i = 0;

with obj_pivot {
	if(free){
		ds_list_add(other.pivot, id);
		other.cnt += 1;
	}
}

ds_list_sort(pivot,true);


while(i < bk_cnt){
	
	var ind = irandom(cnt-1);
	var piv = pivot[| ind];
	ds_list_delete(pivot, ind);
	cnt -= 1;
	
	if(piv != noone){
		var bk = instance_create_layer(piv.x,piv.y,"books",obj_small_book);
		bk.book_id = i;
		bk.state   = "spawn";
	}
	
	i += 1;

}

while(cnt > 0 and i < bk_cnt + 25){
	j = i - bk_cnt;
	
	var ind = irandom(cnt-1);
	var piv = pivot[| ind];
	ds_list_delete(pivot, ind);
	cnt -= 1;
	
	if(piv != noone){
		var bk = instance_create_layer(piv.x,piv.y,"books",obj_small_book_f);
		bk.book_id = j + 65;
		bk.state   = "spawn";
		var ttl    = "Dictionary \n" + chr(j+65);
		bk.info    = [ttl, ""];
	}
		
	if(cnt == 0 or i == bk_cnt + 24){ ds_list_destroy(pivot); }
	
	i += 1;
}


