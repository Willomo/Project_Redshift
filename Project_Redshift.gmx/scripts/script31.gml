///playMusic(track);

track = argument0;

audio_sound_gain(track,global.musicVolume / 100,0);
audio_play_sound(track,10,true)
