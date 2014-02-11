///selectMenuItem(player)

selectPlayer = argument0;

if nameEnabled or controlRebind {
    nameEnabled = false;
    
    saveProfile(currentProfile);
    saveScheme(currentScheme);
    if global.schemeName[currentScheme] = "" {
        global.schemeName[currentScheme] = schemeNameHolder;
    }
    if global.profileName[currentProfile] = "" {
        global.profileName[currentProfile] = profileNameHolder;
    }
} else {
    switch menuItem[currentMenu[selectPlayer],currentItem[currentMenu[selectPlayer],selectPlayer]]  {
        case "Debug":
             room_goto(rmShip);
        break;
        case "Quit Game":
            game_end();
        break;
        case "Play":
            currentMenu[selectPlayer] = play;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Start Server":
            room_goto(rmServerLobby);
        break;
        case "Join Server":
            room_goto(rmClientLobby);
        break;
        case "Profiles":
            currentMenu[selectPlayer] = profiles;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Profile Name":
        case "Scheme Name":
            schemeNameHolder = global.schemeName[currentScheme];
            profileNameHolder = global.profileName[currentProfile];
            nameEnabled = true;
            alarm[11] = 30;
        break;
        
        case "Settings":
            currentMenu[selectPlayer] = settings;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Gameplay":
            currentMenu[selectPlayer] = gameplay;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Controls":
            currentMenu[selectPlayer] = controls;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Control Scheme":
            switch currentMenu[selectPlayer] {
                case controls:
                    if currentScheme = 9 {
                        currentScheme = 0;
                    } else {
                        currentScheme++;
                    }
                break;
                case profiles:
                    if global.profileControlScheme[currentProfile] = 9 {
                        global.profileControlScheme[currentProfile] = 0;
                    } else {
                        global.profileControlScheme[currentProfile]++;
                    }
                    saveProfile(currentProfile);
                break;
            }
        break;
        case "Profile":
            if currentProfile = 9 {
                currentProfile = 0;
            } else {
                currentProfile++;
            }
        break;
        case "Input Method":
            if global.schemeType[currentScheme] = "Keyboard" {
                global.schemeType[currentScheme] = "Controller"; 
            } else if global.schemeType[currentScheme] = "Controller" {
                global.schemeType[currentScheme] = "Keyboard"; 
            }
            saveScheme(currentScheme);
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
            currentMenu[selectPlayer] = video;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
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
            currentMenu[selectPlayer] = audio;
            titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];
        break;
        case "Voice":
            if global.profileVoice[currentProfile] = array_length_1d(voice) - 1 {
                global.profileVoice[currentProfile] = 0;
            } /*else if {
            
            } */else {
                global.profileVoice[currentProfile]++;
            }
            sayYes(global.profileVoice[currentProfile]);
            saveProfile(currentProfile);
        break;
        case "Back":
            switch currentMenu[selectPlayer] {
                case settings:
                case profiles:
                case play:
                    currentMenu[selectPlayer] = root[selectPlayer];
                    titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];                
                break;
                case video:
                    aspect = autoAspect;
                    resolution = autoResolution;
                case gameplay:
                case controls:
                case audio:
                    currentMenu[selectPlayer] = settings;     
                    titleText[selectPlayer] = titleList[currentMenu[selectPlayer]];           
                break;
            }
        break;
        
        case "":
        
        break;
    }
    
    
}
