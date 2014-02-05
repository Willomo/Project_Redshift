//resetViews

for (currentPlayer=0;currentPlayer<=global.numPlayers;currentPlayer++) {

    root[currentPlayer] = main;

    //playerPixel[i] = instance_create(0,0,objPixel);
    titleText[currentPlayer] = "Project Redshift";
    currentMenu[currentPlayer] = main;
    
    currentItem[main,currentPlayer] = 0;
    currentItem[pause,currentPlayer] = 0;
    currentItem[settings,currentPlayer] = 0;
    currentItem[profiles,currentPlayer] = 0;
    currentItem[gameplay,currentPlayer] = 0;
    currentItem[controls,currentPlayer] = 0;
    currentItem[video,currentPlayer] = 0;
    currentItem[audio,currentPlayer] = 0;

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
    
    global.pause[currentPlayer] = true;
    
}


currentItem[main,3] = 1;


menuItem[main,0] = "Play";
menuItem[main,1] = "Profiles";
menuItem[main,2] = "Settings";
menuItem[main,3] = "Quit Game";

menuItem[pause,0] = "Resume";
menuItem[pause,1] = "Settings";
menuItem[pause,2] = "Exit to Menu";
menuItem[pause,3] = "Quit Game";

menuItem[settings,0] = "Back";
menuItem[settings,1] = "Gameplay";
menuItem[settings,2] = "Controls";
menuItem[settings,3] = "Video";
menuItem[settings,4] = "Audio";

menuItem[profiles,0] = "Back";
menuItem[profiles,1] = "Current Profile";
menuItem[profiles,2] = "Profile Name";
menuItem[profiles,3] = "Control Scheme";
menuItem[profiles,4] = "Voice";
menuItem[profiles,5] = "Body";
menuItem[profiles,6] = "Save Profile";

menuItem[gameplay,0] = "Back";
menuItem[gameplay,1] = "I";
menuItem[gameplay,2] = "Should";
menuItem[gameplay,3] = "Get";
menuItem[gameplay,4] = "Some";
menuItem[gameplay,5] = "Gameplay";
menuItem[gameplay,6] = "Options";

menuItem[controls,0] = "Back";
menuItem[controls,1] = "Controls Profile";

menuItem[video,0] = "Back";
menuItem[video,1] = "Fullscreen";
menuItem[video,2] = "Aspect Ratio";
menuItem[video,3] = "Resolution";
menuItem[video,4] = "Apply and Save";


menuItem[audio,0] = "Back";
menuItem[audio,1] = "Music Volume";
menuItem[audio,2] = "Effects Volume";
menuItem[audio,3] = "Voice Volume";
menuItem[audio,4] = "Space Sounds";
menuItem[audio,5] = "Apply and Save";


for(i=0;i<=global.numPlayers;i++) {
    view_enabled[i] = true;
    view_visible[i] = true;
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

