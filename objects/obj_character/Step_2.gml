if(image_alpha != 1) {
	image_alpha = scr_approach(image_alpha, 1, 0.01 + (1 - image_alpha) / 8);
}else {
	if(bubble_xscale < 1){
		bubble_xscale = scr_approach(bubble_xscale, 1, 0.001 + (1 - bubble_xscale) * 0.2);
		bubble_yscale = scr_approach(bubble_yscale, 1, 0.001 + (1 - bubble_yscale) * 0.2);
	}
}