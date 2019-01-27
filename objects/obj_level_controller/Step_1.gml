if(alarm[0] == -1 and not instance_exists(obj_character)){
	alarm[0] = 2 * room_speed;
}

/*if(alarm[1] == -1){
if(i < bk_cnt){
	
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

}else if(cnt > 0 and i < bk_cnt + 25){
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
}*/