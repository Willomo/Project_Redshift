///(player)

currentPlayer = argument0;

if nameEnabled or controlRebind {
    nameEnabled = false;
    
    /*upRebind = false;
    downRebind = false;
    leftRebind = false;
    rightRebind = false;*/
} else {
    switch menuItem[currentMenu[currentPlayer],currentItem[currentMenu[currentPlayer],currentPlayer]]  {
        case "Quit Game":
            game_end();
        break;
        case "Profiles":
            currentMenu[currentPlayer] = profiles;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Profile Name":
        case "Scheme Name":
            nameEnabled = true;
            alarm[11] = 30;
        break;
        case "Settings":
            currentMenu[currentPlayer] = settings;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Gameplay":
            currentMenu[currentPlayer] = gameplay;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Controls":
            currentMenu[currentPlayer] = controls;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Control Scheme":
            if currentScheme = 9 {
                currentScheme = 0;
            } else {
                currentScheme++;
            }
        break;
        case "Move Up":
            global.keyName = "Up";
            controlRebind = true;
        break;
        case "Move Down":
            global.keyName = "Down";
            controlRebind = true;
        break;
        case "Move Left":
            global.keyName = "Left";
            controlRebind = true;
        break;
        case "Move Right":
            global.keyName = "Right";
            controlRebind = true;
        break;
        case "Video":
            currentMenu[currentPlayer] = video;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Fullscreen":
            if fullscreen = "On" {
                fullscreen = "Off";
            } else if fullscreen = "Off" {
                fullscreen = "On";
            }
        break;
        case "Aspect Ratio":
            if aspect = array_length_1d(aspectList) - 1 {
                aspect = 0;
            } else {
                aspect++;
            }
            resolution = 0;
        break;
        
        case "Resolution":
            if resolution = array_length_2d(resolutionList,aspect) - 1 {
                resolution = 0;
            } else {
                resolution++;
            }
        break;
        
        case "Apply and Save":
            saveVideoSettings(resolutionList[aspect,resolution]);
        break;
        
        case "Audio":
            currentMenu[currentPlayer] = audio;
            titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];
        break;
        case "Voice":
            if currentVoice[currentProfile] = array_length_1d(voice) - 1 {
                currentVoice[currentProfile] = 0;
            } /*else if {
            
            } */else {
                currentVoice[currentProfile]++;
            }
            sayYes(currentVoice[currentProfile]);
        break;
        case "Back":
            switch currentMenu[currentPlayer] {
                case settings:
                case profiles:
                    currentMenu[currentPlayer] = root[currentPlayer];
                    titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];                
                break;
                case video:
                    aspect = autoAspect;
                    resolution = autoResolution;
                case gameplay:
                case controls:
                case audio:
                    currentMenu[currentPlayer] = settings;     
                    titleText[currentPlayer] = titleList[currentMenu[currentPlayer]];           
                break;
            }
        break;
        
        case "":
        
        break;
    }
    
    
}
