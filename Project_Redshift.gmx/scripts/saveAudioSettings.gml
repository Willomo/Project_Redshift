///saveAudioSettings()

audio_master_gain(global.masterVolume / 100);

ini_open("settings.ini");
ini_write_real("Audio","Master",global.masterVolume);
ini_write_real("Audio","Music",global.musicVolume);
ini_write_real("Audio","Effects",global.effectsVolume);
ini_write_real("Audio","Voice",global.voiceVolume);
ini_close();


