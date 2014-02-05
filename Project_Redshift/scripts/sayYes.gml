///sayYes(voice)
sampleVoice = argument0;
randomize();
sample = irandom(3)+1;
switch sampleVoice {
    case 0:
        switch sample {
            case 1: 
                audio_play_sound(Adrian_Yes_1,10,false)
            break;
            case 2: 
                audio_play_sound(Adrian_Yes_2,10,false)
            break;
            case 3: 
                audio_play_sound(Adrian_Yes_3,10,false)
            break;
            case 4: 
                audio_play_sound(Adrian_Yes_4,10,false)
            break;
        }
    break;
    case 1:
        switch sample {
            case 1: 
                audio_play_sound(Elizabeth_Yes_1,10,false)
            break;
            case 2: 
                audio_play_sound(Elizabeth_Yes_2,10,false)
            break;
            case 3: 
                audio_play_sound(Elizabeth_Yes_3,10,false)
            break;
            case 4: 
                audio_play_sound(Elizabeth_Yes_4,10,false)
            break;
        }
    break;
    case 2:
        switch sample {
            case 1: 
                audio_play_sound(Xander_Yes_1,10,false)
            break;
            case 2: 
                audio_play_sound(Xander_Yes_2,10,false)
            break;
            case 3: 
                audio_play_sound(Xander_Yes_3,10,false)
            break;
            case 4: 
                audio_play_sound(Xander_Yes_4,10,false)
            break;
        }
    break;
}

