///drawSubItem(drawItem)
drawItem = argument0;
switch drawItem {
    case "Profile":
        drawItem += " " + string(currentProfile + 1);
    break;
    case "Profile Name":
        drawItem += ":" + global.profileName[currentProfile] + nameEndString;
    break;
    case "Voice":
        drawItem += ":" + voice[global.profileVoice[currentProfile]];
    break;
    case "Fullscreen":
        drawItem += ":" + fullscreen;
    break;
    case "Aspect Ratio":
        drawItem += ":" + aspectList[aspect];
    break;
    case "Resolution":
        drawItem += ":" + resolutionList[aspect,resolution];
    break;
    case "Control Scheme":
        switch currentMenu[currentPlayer] {
            case controls:
                drawItem += " " + string(currentScheme + 1);
            break;
            case profiles:
                drawItem += ":" + global.schemeName[global.profileControlScheme[currentProfile]];      
            break;
        }
    break;
    
    case "Scheme Name":
        drawItem += ":" + global.schemeName[currentScheme] + nameEndString;
    break;
    case "Input Method":
        drawItem += ":" + global.schemeType[currentScheme];
    break;
    case "Move Up":
        drawItem += ":" + global.schemeUpKeyMask[currentScheme];
    break;
    case "Move Down":
        drawItem += ":" + global.schemeDownKeyMask[currentScheme];
    break;
    case "Move Left":
        drawItem += ":" + global.schemeLeftKeyMask[currentScheme];
    break;
    case "Move Right":
        drawItem += ":" + global.schemeRightKeyMask[currentScheme];
    break;
    default:
        drawItem = drawItem;
    break;
}
return drawItem;
