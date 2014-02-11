///sayYes(voice)
sampleVoice = argument0;
randomize();
sample = irandom(3)+1;
switch sampleVoice {
    case 0:
        switch sample {
            case 1: 
                voiceSay = Adrian_Yes_1;
            break;
            case 2: 
                voiceSay = Adrian_Yes_2;
            break;
            case 3: 
                voiceSay = Adrian_Yes_3;
            break;
            case 4: 
                voiceSay = Adrian_Yes_4;
            break;
        }
    break;
    case 1:
        switch sample {
            case 1: 
                voiceSay = Elizabeth_Yes_1;
            break;
            case 2: 
                voiceSay = Elizabeth_Yes_2;
            break;
            case 3: 
                voiceSay = Elizabeth_Yes_3;
            break;
            case 4: 
                voiceSay = Elizabeth_Yes_4;
            break;
        }
    break;
    case 2:
        switch sample {
            case 1: 
                voiceSay = Xander_Yes_1;
            break;
            case 2: 
                voiceSay = Xander_Yes_2;
            break;
            case 3: 
                voiceSay = Xander_Yes_3;
            break;
            case 4: 
                voiceSay = Xander_Yes_4;
            break;
        }
    break;
}

audio_sound_gain(voiceSay,global.voiceVolume / 100,0);
audio_play_sound(voiceSay,10,false)
