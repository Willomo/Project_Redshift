///initialiseMenu()

//numPlayers is 0-3

global.numPlayers = 0;


nameEnabled = false;

controlRebind = false;



menuColour[0] = c_orange;
menuColour[1] = c_blue;
menuColour[2] = c_green;
menuColour[3] = c_purple;

//menuPlayerItem = ds_map_create();

menuControls[0] = "Mouse";
menuControls[1] = "WASD";
menuControls[2] = "Arrows";
menuControls[3] = "WASD";


nameEndString = "";

typePause = false;

//Main Menu Items
main = 0;
pause = 1;
settings = 2;
profiles = 3;
gameplay = 4;
controls = 5;
video = 6;
audio = 7;
play = 8;

titleList[main] = "Project Redshift";
titleList[pause] = "Pause";
titleList[settings] = "Settings";
titleList[profiles] = "Profiles";
titleList[gameplay] = "Gameplay";
titleList[controls] = "Controls";
titleList[video] = "Video";
titleList[audio] = "Audio";
titleList[play] = "Play";

for (currentPlayer=0;currentPlayer<=global.numPlayers;currentPlayer++) {

    root[currentPlayer] = main;
    
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
    currentItem[play,currentPlayer] = 0;
    
    global.pause[currentPlayer] = true;
    
}

menuItem[main,0] = "Debug";
menuItem[main,1] = "Play";
menuItem[main,2] = "Profiles";
menuItem[main,3] = "Settings";
menuItem[main,4] = "Credits";
menuItem[main,5] = "Quit Game";

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
menuItem[profiles,1] = "Profile";
menuItem[profiles,2] = "Profile Name";
menuItem[profiles,3] = "Voice";
menuItem[profiles,4] = "Body";

menuItem[gameplay,0] = "Back";
menuItem[gameplay,1] = "I";
menuItem[gameplay,2] = "Should";
menuItem[gameplay,3] = "Get";
menuItem[gameplay,4] = "Some";
menuItem[gameplay,5] = "Gameplay";
menuItem[gameplay,6] = "Options";

menuItem[controls,0] = "Back";
menuItem[controls,1] = "Control Scheme";
menuItem[controls,2] = "Scheme Name";
menuItem[controls,3] = "Input Method";
menuItem[controls,4] = "Move Up";
menuItem[controls,5] = "Move Down";
menuItem[controls,6] = "Move Left";
menuItem[controls,7] = "Move Right";

menuItem[video,0] = "Back";
menuItem[video,1] = "Fullscreen";
menuItem[video,2] = "Aspect Ratio";
menuItem[video,3] = "Resolution";
menuItem[video,4] = "Apply and Save";

menuItem[audio,0] = "Back";
menuItem[audio,1] = "Master Volume";
menuItem[audio,2] = "Music Volume";
menuItem[audio,3] = "Effects Volume";
menuItem[audio,4] = "Voice Volume";
menuItem[audio,5] = "Space Sounds";
menuItem[audio,6] = "Apply and Save";

menuItem[play,0] = "Back";
menuItem[play,1] = "Start Server";
menuItem[play,2] = "Join Server";


