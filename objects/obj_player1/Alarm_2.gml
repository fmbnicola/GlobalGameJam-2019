/// @description stops allowing to hold jump
can_jump = false;
jump_start = true;
alarm_set(3,room_speed*jump_cooldown_time);