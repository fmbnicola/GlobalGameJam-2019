//create ds's here especially if they are global :3

global.dg_books = load_data_to_grid(0,0,"books.csv"); //[Title, Category, Cover, Characters, Synopsis]
global.dg_chars = load_data_to_grid(0,0,"chars.csv"); //[Name, Age, Home, Activity, Social_Status]
global.char_cnt = ds_grid_height(global.dg_chars);

global.dl_to_sort_chars = ds_list_create();
global.sort_chars_cnt   = 0;

for(var i = 0; i < global.char_cnt; i++){
	if(round(random(1))){
		ds_list_add(global.dl_to_sort_chars,i);
		global.sort_chars_cnt += 1;
	}
}