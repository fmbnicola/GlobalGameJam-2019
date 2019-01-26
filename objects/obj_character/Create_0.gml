chr_id = irandom(global.sort_chars_cnt);

var know = [0,0,0,0,0];

var info = ["?","?","?","?","?"];

var cnt = 0;

for(var i = 0; i < 5; i++){
	know[i] = irandom(1);
	
	if(know[i] == 1){
		info[i] = global.dg_chars[# i, chr_id];
		
		if(info[i] != ""){
			cnt += 1;
		}else {
			know[i] = 0;
		}
		
		if(cnt == 3){
			break;
		}
	}
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

scr_console_debug_message(message);