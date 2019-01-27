// Inherit the parent event
event_inherited();

if(p_state != state){
	part_particles_create(global.part_sys, x, y - 16, global.pt_dust, 10);
	p_state = state;
}