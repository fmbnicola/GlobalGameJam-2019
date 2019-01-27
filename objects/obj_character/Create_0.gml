chr_id = irandom(global.sort_chars_cnt-1);
chr_id = global.dl_to_sort_chars[| chr_id];
ds_list_delete(global.dl_to_sort_chars,chr_id);
scr_debug_message_ds_list(global.dl_to_sort_chars);
global.sort_chars_cnt -= 1;

image_xscale = 1.5;
image_yscale = 1.5;

image_alpha = 0;

bubble_xscale = 0;
bubble_yscale = 0;

var know = [0,0,0,0,0];

var info = ["x","x","x","x","x"];

var i   = 0;
var cnt = 0;

while(cnt < 3 or i < 5){
	var ind = i mod 5;
	
	if(not know[ind]){
		know[ind] = irandom(1);
	
		if(know[ind]){
			info[ind] = global.dg_chars[# ind, chr_id];
		
			if(info[ind] != "x"){
				cnt += 1;
			}else {
				know[ind] = 0;
			}
		
			if(cnt == 3){
				break;
			}
		}
	}
	
	i += 1;
}

message = "";

for(var i = 0; i < 5; i++){
	if(know[i]){
		switch i {
			case 0:
				var snt = choose("You can call me ", "My name is ", "I am called ");
			
				message += snt + info[i] + ".\n";
			break;
		
			case 1:
				message += "I am " + string(info[i]) + choose(" years old.\n", ".\n");
			break;
		
			case 2:
			case 3:
				message += info[i] + "\n";
			break;
		
			case 4:
				message += choose("I'm a ", "I am a ", "Consider me a ") + info[i] + ".\n";
			break;
		}
	}
}

