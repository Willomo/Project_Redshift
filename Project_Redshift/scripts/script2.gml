///playSample(voice)
voice = argument0;
sample = irandom(3);
switch voice {
    case "Adrian":
        switch sample {
            case 0: 
                sound_play(Adrian_Yes_1)
            break;
            case 1: 
                sound_play(Adrian_Yes_2)
            break;
            case 2: 
                sound_play(Adrian_Yes_3)
            break;
            case 3: 
                sound_play(Adrian_Yes_4)
            break;
        }
    break;
}
