///initialiseAudio()

ini_open("settings.ini");
global.masterVolume = ini_read_real("Audio","Master",100);
global.musicVolume = ini_read_real("Audio","Music",100);
global.effectsVolume = ini_read_real("Audio","Effects",100);
global.voiceVolume = ini_read_real("Audio","Voice",100);
ini_close();

audio_master_gain(global.masterVolume / 100);
