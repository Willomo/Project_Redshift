///initialiseVideo()
autoRatio = getAspectRatio(display_get_width(),display_get_height());

if autoRatio = "683:384" {
    autoRatio = "16:9";
}

ini_open("settings.ini");
fullscreen = ini_read_string("Video","fullscreen","On");
global.aspectRatio = ini_read_string("Video","aspect",autoRatio);
global.resWidth = ini_read_real("Video","resWidth",display_get_width());
global.resHeight = ini_read_real("Video","resHeight",display_get_height());
ini_close();

window_set_size(global.resWidth,global.resHeight);

if fullscreen = "On" {
    window_set_fullscreen(1);
} else {
    window_set_fullscreen(0);
}

aspect = 0;
resolution = 0;

switch autoRatio {
    case "16:9":
        
        resolutionList[0,0] = "1920x1080";
        resolutionList[0,1] = "1600x900";
        resolutionList[0,2] = "1365x768";
        resolutionList[0,3] = "1280x720";
        resolutionList[0,4] = "852x480";
        
        
        resolutionList[1,0] = "1728x1080";
        resolutionList[1,1] = "1680x1050";
        resolutionList[1,2] = "1440x900";
        resolutionList[1,3] = "1280x800";
        
        resolutionList[2,0] = "1440x1080";
        resolutionList[2,1] = "1400x1050";
        resolutionList[2,2] = "1280x960";
        resolutionList[2,3] = "1152x864";
        resolutionList[2,4] = "1024x768";
        resolutionList[2,5] = "800x600";
        resolutionList[2,6] = "640x480";
        
        aspectList[0] = "16:9";
        aspectList[1] = "16:10";
        aspectList[2] = "4:3";
    break;
    case "16:10":
        
        resolutionList[0,0] = "1728x1080";
        resolutionList[0,1] = "1680x1050";
        resolutionList[0,2] = "1440x900";
        resolutionList[0,3] = "1280x800";
        
        resolutionList[1,1] = "1920x1080";
        resolutionList[1,2] = "1600x900";
        resolutionList[1,3] = "1365x768";
        resolutionList[1,4] = "1280x720";
        resolutionList[1,5] = "852x480";
        
        resolutionList[2,0] = "1440x1080";
        resolutionList[2,1] = "1400x1050";
        resolutionList[2,2] = "1280x960";
        resolutionList[2,3] = "1152x864";
        resolutionList[2,4] = "1024x768";
        resolutionList[2,5] = "800x600";
        resolutionList[2,6] = "640x480";
        
        aspectList[0] = "16:10";
        aspectList[1] = "4:3";
        aspectList[2] = "16:9";
    break;
    case "4:3":

        resolutionList[0,0] = "1440x1080";
        resolutionList[0,1] = "1400x1050";
        resolutionList[0,2] = "1280x960";
        resolutionList[0,3] = "1152x864";
        resolutionList[0,4] = "1024x768";
        resolutionList[0,5] = "800x600";
        resolutionList[0,6] = "640x480";
        
        resolutionList[1,1] = "1920x1080";
        resolutionList[1,2] = "1600x900";
        resolutionList[1,3] = "1365x768";
        resolutionList[1,4] = "1280x720";
        resolutionList[1,5] = "852x480";
        
        resolutionList[2,1] = "1728x1080";
        resolutionList[2,2] = "1680x1050";
        resolutionList[2,3] = "1440x900";
        resolutionList[2,4] = "1280x800";
        
        aspectList[0] = "4:3";
        aspectList[1] = "16:9";
        aspectList[2] = "16:10";
    break;
    default:
        
        
        resolutionList[0,0] = "Auto(" + string(display_get_width()) + "x" + string(display_get_height()) + ")";
        
        resolutionList[1,1] = "1920x1080";
        resolutionList[1,2] = "1600x900";
        resolutionList[1,3] = "1365x768";
        resolutionList[1,4] = "1280x720";
        resolutionList[1,5] = "852x480";
        
        resolutionList[2,0] = "1728x1080";
        resolutionList[2,1] = "1680x1050";
        resolutionList[2,2] = "1440x900";
        resolutionList[2,3] = "1280x800";
        
        resolutionList[3,0] = "1440x1080";
        resolutionList[3,1] = "1400x1050";
        resolutionList[3,2] = "1280x960";
        resolutionList[3,3] = "1152x864";
        resolutionList[3,4] = "1024x768";
        resolutionList[3,5] = "800x600";
        resolutionList[3,6] = "640x480";
        
        aspectList[0] = "Auto(" + autoRatio + ")";
        aspectList[1] = "16:9";
        aspectList[2] = "16:10";
        aspectList[3] = "4:3";
    break;
}


global.workingSpaceHeight = 1080;


switch global.aspectRatio {
    case "16:9":
        global.workingSpaceWidth = 1920;
        switch string(global.resWidth) + "x" + string(global.resHeight) {
            case "1920x1080":
                autoResolution = 0;
            break;
            case "1600x900":
                autoResolution = 1;
            break;
            case "1365x768":
                autoResolution = 2;
            break;
            case "1280x720":
                autoResolution = 3;
            break;
            case "852x480":
                autoResolution = 4;
            break;
            default:
                autoResolution = 0;
            break;
        }
        
        switch autoRatio {
            case "16:9":
                autoAspect = 0;
            break;
            case "16:10":
                autoAspect = 2;
            break;
            case "4:3":
                autoAspect = 1;
            break;
            default:
                autoAspect = 1;
            break;
        }
    break;
    case "16:10":
        global.workingSpaceWidth = 1728;
        
        switch string(global.resWidth) + "x" + string(global.resHeight) {
            case "1728x1080":
                autoResolution = 0;
            break;
            case "1680x1050":
                autoResolution = 1;
            break;
            case "1440x900":
                autoResolution = 2;
            break;
            case "1280x800":
                autoResolution = 3;
            break;
            default:
                autoResolution = 0;
            break;
        }
        
        switch autoRatio {
            case "16:9":
                autoAspect = 1;
            break;
            case "16:10":
                autoAspect = 0;
            break;
            case "4:3":
                autoAspect = 2;
            break;
            default:
                autoAspect = 2;
            break;
        }
    break;
    case "4:3":
        global.workingSpaceWidth = 1440;
        
        switch string(global.resWidth) + "x" + string(global.resHeight) {
            case "1440x1080":
                autoResolution = 0;
            break;
            case "1400x1050":
                autoResolution = 1;
            break;
            case "1280x960":
                autoResolution = 2;
            break;
            case "1152x864":
                autoResolution = 3;
            break;
            case "1024x768":
                autoResolution = 4;
            break;
            case "800x600":
                autoResolution = 5;
            break;
            case "640x480":
                autoResolution = 6;
            break;
            default:
                autoResolution = 0;
            break;
            
            
        }
            
        switch autoRatio {
                case "16:9":
                    autoAspect = 2;
                break;
                case "16:10":
                    autoAspect = 1;
                break;
                case "4:3":
                    autoAspect = 0;
                break;
                default:
                    autoAspect = 3;
                break;
        }
    break;
    default:
        global.workingSpaceWidth = 1080 * (global.resWidth / global.resHeight);
        
        autoResolution = 0;
        
        autoAspect = 0;
    break;
}

aspect = autoAspect;
resolution = autoResolution;

for (currentPlayer=0;currentPlayer<=global.numPlayers;currentPlayer++) {


    view_enabled[currentPlayer] = false;
    view_visible[currentPlayer] = false;

    global.playerViewWidth[currentPlayer] = 0;
    global.playerViewHeight[currentPlayer] = 0;
    
    global.playerPortWidth[currentPlayer] = 0;
    global.playerPortHeight[currentPlayer] = 0;
    
    global.playerViewX[currentPlayer] = 0;
    global.playerViewY[currentPlayer] = 0;
    
    global.playerPortX[currentPlayer] = 0;
    global.playerPortY[currentPlayer] = 0;
}


for(i=0;i<=global.numPlayers;i++) {
    view_enabled[i] = true;
    view_visible[i] = true;
}

//VERTICAL SPLIT
switch global.numPlayers {
    case 0:
        global.playerViewWidth[0] = global.workingSpaceWidth;
        global.playerViewHeight[0] = global.workingSpaceHeight;
        
        global.playerPortWidth[0] = global.resWidth;
        global.playerPortHeight[0] = global.resHeight;
        
        global.playerViewX[0] = -global.workingSpaceWidth;
        global.playerViewY[0] = -global.workingSpaceHeight;
        
        global.playerPortX[0] = 0;
        global.playerPortY[0] = 0;
    break;
    case 1:
        titleText[0] = "Project#Redshift";
        
        global.playerViewWidth[0] = global.workingSpaceWidth / 2;
        global.playerViewHeight[0] = global.workingSpaceHeight;
        
        global.playerPortWidth[0] = global.resWidth / 2;
        global.playerPortHeight[0] = global.resHeight;
        
        global.playerViewX[0] = -global.workingSpaceWidth;
        global.playerViewY[0] = -global.workingSpaceHeight;
        
        global.playerPortX[0] = 0;
        global.playerPortY[0] = 0;
        
        titleText[1] = "Project#Redshift";      
          
        global.playerViewWidth[1] = global.workingSpaceWidth / 2;
        global.playerViewHeight[1] = global.workingSpaceHeight;
        
        global.playerPortWidth[1] = global.resWidth / 2;
        global.playerPortHeight[1] = global.resHeight;
        
        global.playerViewX[1] = 0;
        global.playerViewY[1] = 0;
        
        global.playerPortX[1] = global.playerPortWidth[0];
        global.playerPortY[1] = 0;
    break;
    case 2:
        titleText[0] = "Project#Redshift";
        global.playerViewWidth[0] = global.workingSpaceWidth / 2;
        global.playerViewHeight[0] = global.workingSpaceHeight;
        
        global.playerPortWidth[0] = global.resWidth / 2;
        global.playerPortHeight[0] = global.resHeight;
        
        global.playerViewX[0] = -global.workingSpaceWidth;
        global.playerViewY[0] = -global.workingSpaceHeight;
        
        global.playerPortX[0] = 0;
        global.playerPortY[0] = 0;
        
        global.playerViewWidth[1] = global.workingSpaceWidth;
        global.playerViewHeight[1] = global.workingSpaceHeight;
        
        global.playerPortWidth[1] = global.resWidth / 2;
        global.playerPortHeight[1] = global.resHeight / 2;
        
        global.playerViewX[1] = 0;
        global.playerViewY[1] = 0;
        
        global.playerPortX[1] = global.playerPortWidth[0];
        global.playerPortY[1] = 0;
        
        global.playerViewWidth[2] = global.workingSpaceWidth;
        global.playerViewHeight[2] = global.workingSpaceHeight;
        
        global.playerPortWidth[2] = global.resWidth / 2;
        global.playerPortHeight[2] = global.resHeight / 2;
        
        global.playerViewX[2] = 0;
        global.playerViewY[2] = 0;
        
        global.playerPortX[2] = global.playerPortWidth[0];
        global.playerPortY[2] = global.playerPortHeight[1];
    break;
    case 3:
        global.playerViewWidth[0] = global.workingSpaceWidth;
        global.playerViewHeight[0] = global.workingSpaceHeight;
        
        global.playerPortWidth[0] = global.resWidth / 2;
        global.playerPortHeight[0] = global.resHeight / 2;
        
        global.playerViewX[0] = -global.workingSpaceWidth;
        global.playerViewY[0] = -global.workingSpaceHeight;
        
        global.playerPortX[0] = 0;
        global.playerPortY[0] = 0;
        
        global.playerViewWidth[1] = global.workingSpaceWidth;
        global.playerViewHeight[1] = global.workingSpaceHeight;
        
        global.playerPortWidth[1] = global.resWidth / 2;
        global.playerPortHeight[1] = global.resHeight / 2;
        
        global.playerViewX[1] = 0;
        global.playerViewY[1] = 0;
        
        global.playerPortX[1] = global.playerPortWidth[0];
        global.playerPortY[1] = 0;
        
        global.playerViewWidth[2] = global.workingSpaceWidth;
        global.playerViewHeight[2] = global.workingSpaceHeight;
        
        global.playerPortWidth[2] = global.resWidth / 2;
        global.playerPortHeight[2] = global.resHeight / 2;
        
        global.playerViewX[2] = 0;
        global.playerViewY[2] = 0;
        
        global.playerPortX[2] = 0;
        global.playerPortY[2] = global.playerPortHeight[1];
        
        global.playerViewWidth[3] = global.workingSpaceWidth;
        global.playerViewHeight[3] = global.workingSpaceHeight;
        
        global.playerPortWidth[3] = global.resWidth / 2;
        global.playerPortHeight[3] = global.resHeight / 2;
        
        global.playerViewX[3] = 0;
        global.playerViewY[3] = 0;
        
        global.playerPortX[3] = global.playerPortWidth[0];
        global.playerPortY[3] = global.playerPortHeight[1];
    break;
}

