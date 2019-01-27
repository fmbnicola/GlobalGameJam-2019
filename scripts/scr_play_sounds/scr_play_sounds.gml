var snd   = argument[irandom(argument_count-1)];
var pitch = random_range(0.9, 1.1);
audio_play_sound(snd,1,false);
audio_sound_pitch(snd,pitch);
