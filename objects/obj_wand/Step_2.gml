// Inherit the parent event
event_inherited();

if(state == 1){
	if(counter == 0){
		part_particles_create(global.part_sys, x, y + 40, global.pt_star, 2);
	}else {
		if(counter mod (room_speed / 2) == 0){
			part_particles_create(global.part_sys, x, y + 40, global.pt_star, 10);
		}
		
		if(counter == 0){
			part_particles_create(global.part_sys, x, y + 40, global.pt_star, 50);
		}
	}
}