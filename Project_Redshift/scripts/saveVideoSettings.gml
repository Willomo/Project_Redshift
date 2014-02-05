///saveVideoSettings(input)
input = argument0;

auto = "Auto(" + string(display_get_width()) + "x" + string(display_get_height()) + ")";

switch input {
    case auto:
        global.resWidth = display_get_width();
        global.resHeight = display_get_height();
    break;
    case "1920x1080":
        global.resWidth = 1920;
        global.resHeight = 1080;
    break;
    case "1600x900":
        global.resWidth = 1600;
        global.resHeight = 900;
    break;
    case "1365x768":
        global.resWidth = 1365;
        global.resHeight = 768;
    break;
    case "1280x720":
        global.resWidth = 1280;
        global.resHeight = 720;
    break;
    case "852x480":
        global.resWidth = 852;
        global.resHeight = 480;
    break;
    case "1728x1080":
        global.resWidth = 1728;
        global.resHeight = 1080;
    break;
    case "1680x1050":
        global.resWidth = 1680;
        global.resHeight = 1050;
    break;
    case "1440x900":
        global.resWidth = 1440;
        global.resHeight = 900;
    break;
    case "1280x800":
        global.resWidth = 1280;
        global.resHeight = 800;
    break;
    case "1440x1080":
        global.resWidth = 1440;
        global.resHeight = 1080;
    break;
    case "1400x1050":
        global.resWidth = 1400;
        global.resHeight = 1050;
    break;
    case "1280x960":
        global.resWidth = 1280;
        global.resHeight = 960;
    break;
    case "1152x864":
        global.resWidth = 1152;
        global.resHeight = 864;
    break;
    case "1024x768":
        global.resWidth = 1024;
        global.resHeight = 768;
    break;
    case "800x600":
        global.resWidth = 800;
        global.resHeight = 600;
    break;
    case "640x480":
        global.resWidth = 640;
        global.resHeight = 480;
    break;
}

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

        
if fullscreen = "On" {
    window_set_fullscreen(1);
} else {
    window_set_fullscreen(0);
}

window_set_size(global.resWidth,global.resHeight);

global.aspectRatio = aspectList[aspect];

ini_open("settings.ini");
ini_write_string("Video","fullscreen",fullscreen);
ini_write_string("Video","aspect",global.aspectRatio);
ini_write_real("Video","resWidth",global.resWidth);
ini_write_real("Video","resHeight",global.resHeight);
ini_close();

//resetVariables();
initialiseVideo();


