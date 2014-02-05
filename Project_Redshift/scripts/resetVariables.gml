//resetViews

switch global.aspectRatio {
    case "16:9":
        global.workingSpaceWidth = 1920;
    break;
    case "16:10":
        global.workingSpaceWidth = 1728;
    break;
    case "4:3":
        global.workingSpaceWidth = 1440;
    break;
    default:
        global.workingSpaceWidth = 1080 * (global.resWidth / global.resHeight);
    break;
}



for (currentPlayer=0;currentPlayer<=global.numPlayers;currentPlayer++) {

    global.playerViewWidth[currentPlayer] = 0;
    global.playerViewHeight[currentPlayer] = 0;
    
    global.playerPortWidth[currentPlayer] = 0;
    global.playerPortHeight[currentPlayer] = 0;
    
    global.playerViewX[currentPlayer] = 0;
    global.playerViewY[currentPlayer] = 0;
    
    global.playerPortX[currentPlayer] = 0;
    global.playerPortY[currentPlayer] = 0;
    
    
}



/*
switch global.numPlayers {
    case 1:
        view_enabled[0] = true;
        view_visible[0] = true;
    case 2:
        view_enabled[1] = true;
        view_visible[1] = true;
    case 3:
        view_enabled[2] = true;
        view_visible[2] = true;
    case 4:
        view_enabled[3] = true;
        view_visible[3] = true;
    break;
}
*/




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

