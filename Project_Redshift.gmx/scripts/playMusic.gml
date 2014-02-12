///playMusic(track);

track = argument0;

if track < 0 {
    randomize();
    switch 0 {//irandom(2) {
        case 0:
            track = MenuMusic1;
        break;
        case 1:
            //track = MenuMusic2;
        break;
        case 2:
            //track = MenuMusic3;
        break;
    }
}
global.currentMusic = track;
audio_sound_gain(track,global.musicVolume / 100,0);
audio_play_sound(track,10,true)
